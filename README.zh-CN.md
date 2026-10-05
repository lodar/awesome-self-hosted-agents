# Awesome Self-Hosted Agents

[English](README.md)

可以在自己的机器（Linux 服务器、树莓派或 Mac mini）上运行的智能体及其使用的服务。

标有（由项目维护者提交）的条目由项目的开发者自己添加。没有该标记的条目由本列表收集。

## 目录

- [智能体运行环境](#智能体运行环境)
- [编程智能体](#编程智能体)
- [框架](#框架)
- [本地模型服务器](#本地模型服务器)
- [沙箱](#沙箱)
- [聊天渠道](#聊天渠道)
- [浏览器工具](#浏览器工具)
- [记忆与知识](#记忆与知识)
- [可观测性](#可观测性)
- [硬件](#硬件)

## 智能体运行环境

- [OpenClaw](https://github.com/openclaw/openclaw) - 支持本地模型、工具、技能和聊天渠道的个人 AI 助手。
- [Hermes Agent](https://github.com/NousResearch/hermes-agent) - 带有工具、记忆、技能、本地模型和聊天集成的 AI 智能体。
- [Dify](https://github.com/langgenius/dify) - 智能体工作流和 RAG 流水线平台。 (source-available)
- [OpenHands](https://github.com/OpenHands/OpenHands) - 可自托管的编程智能体和自动化控制中心。
- [AnythingLLM](https://github.com/Mintplex-Labs/anything-llm) - 本地模型、智能体和检索的工作空间。
- [OpenManus](https://github.com/FoundationAgents/OpenManus) - 支持终端、MCP 工具和多智能体执行的通用智能体。
- [QwenPaw](https://github.com/agentscope-ai/QwenPaw) - 部署在自己机器上的个人 AI 助手。
- [Agent Zero](https://github.com/agent0ai/agent-zero) - 带有 Docker 化 Linux 桌面的智能体框架。
- [5dive](https://github.com/5dive-ai/5dive) - 在你自己的服务器上运行的开源 AI 智能体团队，可运行 Claude Code、Codex、Pi 等。（由项目维护者提交）
- [Tale](https://github.com/tale-project/tale) - 用于团队任务、沙箱智能体和交付成果审查的共享项目工作空间。（由项目维护者提交）
- [YYLO](https://github.com/yylo-dev/yylo) - 可将 Claude Code、Codex、Cursor、Gemini 和 Pi 作为子智能体运行的命令行编排器。（由项目维护者提交）

## 编程智能体

- [OpenCode](https://github.com/anomalyco/opencode) - 终端编程智能体。
- [Claude Code](https://github.com/anthropics/claude-code) - 在终端运行的编程工具。把 ANTHROPIC_BASE_URL 指向你自己部署的模型即可。 (proprietary)
- [Codex CLI](https://github.com/openai/codex) - 在终端运行的编程智能体。加 --oss 即可通过 Ollama 或 LM Studio 用本地模型。
- [Pi](https://github.com/earendil-works/pi) - 编程智能体 CLI 和智能体工具包。
- [goose](https://github.com/aaif-goose/goose) - 提供桌面、CLI 和 API 界面的 AI 智能体，可使用本地 Ollama 模型。
- [Crush](https://github.com/charmbracelet/crush) - 支持模型和 MCP 的终端编程智能体。 (source-available)
- [mini-SWE-agent](https://github.com/SWE-agent/mini-swe-agent) - 能解决 GitHub issue、也能在命令行中协助你的编程智能体。

## 框架

- [Agno](https://github.com/agno-agi/agno) - 用于将智能体作为服务运行的框架和运行环境。
- [Mastra](https://github.com/mastra-ai/mastra) - 可部署为独立服务器的 TypeScript 智能体框架。 (open core)
- [Google ADK](https://github.com/google/adk-python) - 用于构建和部署智能体的 Python 工具包。

## 本地模型服务器

- [Ollama](https://github.com/ollama/ollama) - 在本地运行模型，提供 HTTP API。
- [llama.cpp](https://github.com/ggml-org/llama.cpp) - 使用 C/C++ 进行 LLM 推理，提供兼容 OpenAI 的服务器。
- [LocalAI](https://github.com/mudler/LocalAI) - 无需 GPU 即可运行的本地模型服务器。
- [vLLM](https://github.com/vllm-project/vllm) - 提供兼容 OpenAI API 的模型服务引擎。
- [LiteLLM](https://github.com/BerriAI/litellm) - 可自托管的模型 API 代理服务器。 (open core)
- [Bifrost](https://github.com/maximhq/bifrost) - AI 网关，用一个兼容 OpenAI 的 API 接入托管和自托管的模型提供方。

## 沙箱

- [OpenSandbox](https://github.com/opensandbox-group/OpenSandbox) - 用于隔离智能体环境的运行环境。
- [OpenShell](https://github.com/NVIDIA/OpenShell) - 为自主 AI 智能体集群提供策略约束的沙箱运行环境。
- [Microsandbox](https://github.com/superradcompany/microsandbox) - 用于隔离运行代码的本地 microVM 运行环境。
- [Agent Infra Sandbox](https://github.com/agent-infra/sandbox) - 在一个 Docker 容器中提供浏览器、shell、文件和 MCP。

## 聊天渠道

- [LangBot](https://github.com/langbot-app/LangBot) - 聊天网络上的智能体机器人平台。
- [GolemBot](https://github.com/0xranx/golembot) - 将编程智能体连接到 Slack、Telegram 和 Discord。
- [MindRoom](https://github.com/mindroom-ai/mindroom) - 基于 Matrix 的可自托管多智能体运行环境。 (open core)

## 浏览器工具

- [Browser Use](https://github.com/browser-use/browser-use) - 开源浏览器智能体，提供 CLI 和本地 Python 库。
- [Playwright MCP](https://github.com/microsoft/playwright-mcp) - 使用 Playwright 自动操作浏览器的 MCP 服务器。
- [Skyvern](https://github.com/Skyvern-AI/skyvern) - 用 AI 运行浏览器工作流。
- [Browserless](https://github.com/browserless/browserless) - 在 Docker 中运行的无头浏览器服务，可通过 Puppeteer 或 Playwright 连接。 (source-available)
- [Steel Browser](https://github.com/steel-dev/steel-browser) - 供智能体使用的可自托管浏览器 API。

## 记忆与知识

- [RAGFlow](https://github.com/infiniflow/ragflow) - 带有智能体功能的 RAG 引擎。
- [Mem0](https://github.com/mem0ai/mem0) - 面向 AI 智能体的记忆基础设施，提供可自托管的 REST API。
- [LightRAG](https://github.com/HKUDS/LightRAG) - 支持本地部署的 RAG 服务器。
- [Cognee](https://github.com/topoteretes/cognee) - 通过可自托管知识图谱为智能体提供持久记忆。
- [Graphiti](https://github.com/getzep/graphiti) - 用于为 AI 智能体构建和查询时序上下文图的框架。

## 可观测性

- [Langfuse](https://github.com/langfuse/langfuse) - 可自托管的 LLM 应用追踪和评估工具。 (open core)
- [Opik](https://github.com/comet-ml/opik) - 智能体追踪、LLM 评估和提示词管理。
- [Phoenix](https://github.com/Arize-ai/phoenix) - AI 可观测性和评估。 (source-available)
- [Helicone](https://github.com/Helicone/helicone) - 可自托管的 LLM 可观测性工具。
- [OpenLIT](https://github.com/openlit/openlit) - 基于 OpenTelemetry、可自托管的 AI 智能体可观测性与评估平台。

## 硬件

- [Raspberry Pi 5](https://www.raspberrypi.com/products/raspberry-pi-5/) - 单板 Linux 电脑，可用 llama.cpp 或 Ollama 运行小型本地模型。
- [Mac mini](https://www.apple.com/mac-mini/) - 苹果芯片小型台式机，Ollama 和 llama.cpp 可在其 GPU 上运行本地模型。

## 贡献

提交 pull request 之前，请先阅读 [CONTRIBUTING.md](CONTRIBUTING.md)。
