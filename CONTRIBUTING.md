# Contributing

Add a project you can install on your own box (a Linux server, a Raspberry Pi or a Mac mini) and run as an agent or a service agents use.

- The repository must have a commit within 60 days and must not be archived.
- The repository must have at least 50 GitHub stars. Entries merged before 2026-10-07 keep their place.
- Submit one entry per pull request.
- Copy the entry format in README.md. No em dashes.
- Keep the description at 100 characters or fewer, with plain words and no hype.
- Source the description from the project's README or GitHub About text.
- Mark proprietary, source-available and open-core projects. State any affiliation.
- Submitting your own project is welcome. End its entry with (submitted by its maintainer), and （由项目维护者提交） in README.zh-CN.md.
- Frameworks must ship a server or runtime. Keep this section to four entries.
- Agents and coding tools must work with a model you host yourself, not only the vendor's hosted model.
- Add the same entry to README.zh-CN.md with the same facts.

Run `bash check.sh` before submitting. It flags repos with no commit in 90 days or archived. The rule is still 60 days. It does not count stars.
