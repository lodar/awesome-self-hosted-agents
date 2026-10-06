#!/usr/bin/env bash
# Read public default-branch commit feeds and repository archive banners.
set -uo pipefail
cd -- "$(dirname -- "${BASH_SOURCE[0]}")" || exit 2
for tool in curl grep sed date; do
  command -v "$tool" >/dev/null || { echo "ERROR missing $tool" >&2; exit 2; }
done
readme="${1:-README.md}"
[[ -r "$readme" ]] || { echo "ERROR unreadable README: $readme" >&2; exit 2; }
work=$(mktemp -d) || exit 2
trap 'rm -rf -- "$work"' EXIT
# A read loop, not mapfile: macOS ships Bash 3.2, where mapfile is missing and the
# check used to pass without reading a single repository.
repos=()
while IFS= read -r repo; do repos+=("$repo"); done < <(grep -E '^- \[' "$readme" | sed -nE 's@.*\]\((https://github.com/[^/)]+/[^/)]+)\).*@\1@p' | sort -u)
[[ ${#repos[@]} -gt 0 ]] || { echo 'ERROR no repository entries'; exit 2; }
now=$(date -u +%s)
check_repo() {
  local repo="$1" output="$2" feed="$3" page="$4" stamp epoch age state=OK failed=0
  if ! curl --fail --silent --show-error --location --retry 1 --connect-timeout 10 --max-time 35 "$repo/commits.atom" > "$feed"; then
    printf '%s\tUNKNOWN\tFLAG feed-fetch\n' "$repo" > "$output"; return
  fi
  stamp=$(sed -nE 's@.*<updated>([^<]+)</updated>.*@\1@p' "$feed" | head -n 1)
  # BSD date (macOS) first: its -j never touches the clock, and GNU date rejects -j.
  if [[ -z "$stamp" ]] || ! { epoch=$(date -u -j -f '%Y-%m-%dT%H:%M:%SZ' "$stamp" +%s 2>/dev/null) || epoch=$(date -u -d "$stamp" +%s 2>/dev/null); }; then
    printf '%s\tUNKNOWN\tFLAG invalid-feed-date\n' "$repo" > "$output"; return
  fi
  age=$(( (now - epoch) / 86400 ))
  if (( now - epoch > 90 * 86400 )); then state='FLAG over-90-days'; failed=1; fi
  if (( epoch > now + 86400 )); then state='FLAG future-date'; failed=1; fi
  if ! curl --fail --silent --show-error --location --retry 1 --connect-timeout 10 --max-time 35 "$repo" > "$page"; then
    state+='; FLAG archive-check-fetch'; failed=1
  elif grep -qiE 'This repository (was|has been) archived|This repository is archived' "$page"; then
    state+='; FLAG archived'; failed=1
  elif ! grep -qE 'repository|Repository' "$page"; then
    state+='; FLAG invalid-repository-page'; failed=1
  fi
  printf '%s\t%s\t%s days\t%s\n' "$repo" "$stamp" "$age" "$state" > "$output"
}
printf 'repository\tlast_commit\tage\tstatus\n'
# At most four public fetch workers; collect each repository's output once.
for ((i=0; i<${#repos[@]}; i++)); do
  check_repo "${repos[i]}" "$work/$i.out" "$work/$i.atom" "$work/$i.html" &
  if (( (i+1) % 4 == 0 )); then wait; fi
done
wait
status=0
for ((i=0; i<${#repos[@]}; i++)); do
  if [[ ! -s "$work/$i.out" ]]; then
    printf '%s\tUNKNOWN\tFLAG worker-missing\n' "${repos[i]}"; status=1
  else
    cat "$work/$i.out"
    if grep -q 'FLAG' "$work/$i.out"; then status=1; fi
  fi
done
printf 'Checked %s repositories; exit %s\n' "${#repos[@]}" "$status"
exit "$status"
