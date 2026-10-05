# Awesome Self-Hosted Agents

[中文](README.zh-CN.md)

Agents and services for agents that you can run on your own box: a Linux server, a Raspberry Pi or a Mac mini.

An entry marked (submitted by its maintainer) was added by the people who make the project. Entries without the mark were collected by this list.

## Contents

- [Agent runtimes](#agent-runtimes)
- [Coding agents](#coding-agents)
- [Frameworks](#frameworks)
- [Local model servers](#local-model-servers)
- [Sandboxes](#sandboxes)
- [Chat channels](#chat-channels)
- [Browser tools](#browser-tools)
- [Memory and knowledge](#memory-and-knowledge)
- [Observability](#observability)
- [Hardware](#hardware)

## Agent runtimes

- [OpenClaw](https://github.com/openclaw/openclaw) - Personal AI assistant with local models, tools, skills and chat channels.
- [Hermes Agent](https://github.com/NousResearch/hermes-agent) - AI agent with tools, memory, skills, local models and chat integrations.
- [Dify](https://github.com/langgenius/dify) - Platform for agent workflows and RAG pipelines. (source-available)
- [OpenHands](https://github.com/OpenHands/OpenHands) - Self-hosted control center for coding agents and automations.
- [AnythingLLM](https://github.com/Mintplex-Labs/anything-llm) - Workspace for local models, agents and retrieval.
- [OpenManus](https://github.com/FoundationAgents/OpenManus) - General-purpose agent with terminal, MCP tools and multi-agent execution.
- [QwenPaw](https://github.com/agentscope-ai/QwenPaw) - Personal AI assistant you deploy on your own machine.
- [Agent Zero](https://github.com/agent0ai/agent-zero) - Agent framework with a Dockerized Linux desktop.
- [5dive](https://github.com/5dive-ai/5dive) - Open-source AI agent team on a server you own. Runs Claude Code, Codex, Pi and more. (submitted by its maintainer)
- [Tale](https://github.com/tale-project/tale) - Shared project workspace for team tasks, sandboxed agents, and deliverable review. (submitted by its maintainer)
- [YYLO](https://github.com/yylo-dev/yylo) - Command-line orchestrator that runs Claude Code, Codex, Cursor, Gemini and Pi as subagents. (submitted by its maintainer)

## Coding agents

- [OpenCode](https://github.com/anomalyco/opencode) - Coding agent for the terminal.
- [Claude Code](https://github.com/anthropics/claude-code) - Coding tool that runs in your terminal. Point ANTHROPIC_BASE_URL at a model you host. (proprietary)
- [Codex CLI](https://github.com/openai/codex) - Coding agent that runs in your terminal. Local models via Ollama or LM Studio with --oss.
- [Pi](https://github.com/earendil-works/pi) - Coding agent CLI and agent toolkit.
- [goose](https://github.com/aaif-goose/goose) - AI agent with desktop, CLI and API interfaces that works with local Ollama models.
- [Crush](https://github.com/charmbracelet/crush) - Terminal coding agent with model and MCP support. (source-available)
- [mini-SWE-agent](https://github.com/SWE-agent/mini-swe-agent) - Coding agent that solves GitHub issues or helps you in the command line.

## Frameworks

- [Agno](https://github.com/agno-agi/agno) - Framework and runtime for agents you run as a service.
- [Mastra](https://github.com/mastra-ai/mastra) - TypeScript agent framework you can deploy as a standalone server. (open core)
- [Google ADK](https://github.com/google/adk-python) - Python toolkit for building and deploying agents.

## Local model servers

- [Ollama](https://github.com/ollama/ollama) - Run models locally with an HTTP API.
- [llama.cpp](https://github.com/ggml-org/llama.cpp) - LLM inference in C/C++ with an OpenAI-compatible server.
- [LocalAI](https://github.com/mudler/LocalAI) - Local model server that runs without a GPU.
- [vLLM](https://github.com/vllm-project/vllm) - Model serving engine with an OpenAI-compatible API.
- [LiteLLM](https://github.com/BerriAI/litellm) - Self-hosted proxy server for model APIs. (open core)
- [Bifrost](https://github.com/maximhq/bifrost) - AI gateway with one OpenAI-compatible API for hosted and self-hosted model providers.

## Sandboxes

- [OpenSandbox](https://github.com/opensandbox-group/OpenSandbox) - Runtime for isolated agent environments.
- [OpenShell](https://github.com/NVIDIA/OpenShell) - Policy-enforced sandbox runtime for fleets of autonomous AI agents.
- [Microsandbox](https://github.com/superradcompany/microsandbox) - Local microVM runtime for running code in isolation.
- [Agent Infra Sandbox](https://github.com/agent-infra/sandbox) - Browser, shell, files and MCP in a Docker container.

## Chat channels

- [LangBot](https://github.com/langbot-app/LangBot) - Platform for agentic bots on chat networks.
- [GolemBot](https://github.com/0xranx/golembot) - Connect coding agents to Slack, Telegram and Discord.
- [MindRoom](https://github.com/mindroom-ai/mindroom) - Self-hosted multi-agent runtime on Matrix. (open core)

## Browser tools

- [Browser Use](https://github.com/browser-use/browser-use) - Open-source browser agent with CLI and a local Python library.
- [Playwright MCP](https://github.com/microsoft/playwright-mcp) - MCP server for browser automation with Playwright.
- [Skyvern](https://github.com/Skyvern-AI/skyvern) - Run browser workflows with AI.
- [Browserless](https://github.com/browserless/browserless) - Headless browser service you run in Docker and connect to with Puppeteer or Playwright. (source-available)
- [Steel Browser](https://github.com/steel-dev/steel-browser) - Self-hosted browser API for agents.

## Memory and knowledge

- [RAGFlow](https://github.com/infiniflow/ragflow) - RAG engine with agent capabilities.
- [Mem0](https://github.com/mem0ai/mem0) - Memory infrastructure for AI agents with a self-hosted REST API.
- [LightRAG](https://github.com/HKUDS/LightRAG) - RAG server with local deployment options.
- [Cognee](https://github.com/topoteretes/cognee) - Persistent memory for agents with a self-hosted knowledge graph.
- [Graphiti](https://github.com/getzep/graphiti) - Framework for building and querying temporal context graphs for AI agents.

## Observability

- [Langfuse](https://github.com/langfuse/langfuse) - Self-hosted tracing and evaluation for LLM applications. (open core)
- [Opik](https://github.com/comet-ml/opik) - Agent tracing, LLM evaluation and prompt management.
- [Phoenix](https://github.com/Arize-ai/phoenix) - AI observability and evaluation. (source-available)
- [Helicone](https://github.com/Helicone/helicone) - Self-hosted LLM observability.
- [OpenLIT](https://github.com/openlit/openlit) - Self-hosted observability and evaluation platform for AI agents on OpenTelemetry.

## Hardware

- [Raspberry Pi 5](https://www.raspberrypi.com/products/raspberry-pi-5/) - Single-board Linux computer that runs small local models with llama.cpp or Ollama.
- [Mac mini](https://www.apple.com/mac-mini/) - Small Apple silicon desktop where Ollama and llama.cpp run local models on the GPU.

## Contributing

Read [CONTRIBUTING.md](CONTRIBUTING.md) before you open a pull request.
