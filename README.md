# coach-mode-protocol

> **A cross-platform AI protocol that refuses to do the work for you.**
> Forces learn-by-doing. Works with Claude, Cursor, ChatGPT, Aider, Gemini, or any LLM that accepts a system prompt.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![Status](https://img.shields.io/badge/status-research%20preview-orange)
![Platform](https://img.shields.io/badge/AI--agnostic-Claude%20%7C%20Cursor%20%7C%20ChatGPT%20%7C%20Aider%20%7C%20any%20LLM-blue)

---

## The problem this exists to solve

In the era of AI-augmented work, a quiet danger emerges:

> **Users who lean entirely on AI tools accumulate tool-dependency, not skills.**
> They look productive on the outside — impressive demos, working pipelines — but their abilities don't grow.

You've probably felt it:
- *"AI helped me ship 100 demos but I can't read my own code."*
- *"I asked the AI how to do X and it just did X."*
- *The 80/20 trap: AI does 80% of the work in 20% of the time, so you hand over everything. Years later: dependency without competence.*

**coach-mode** is a deliberately *slower* protocol that flips the AI from **executor** to **coach**.

| Default AI | coach-mode AI |
|---|---|
| Runs commands, writes files | Refuses to take the field |
| Optimizes for output speed | Optimizes for ability transfer |
| "Let me handle that for you" | "Here's what to type, and why. You go." |

---

## Quick start

Pick your platform and drop the adapter file in:

| Platform | Adapter file | Where to put it |
|---|---|---|
| **Claude Code** | [`adapters/claude-code/SKILL.md`](adapters/claude-code/SKILL.md) | `~/.claude/skills/coach-mode/SKILL.md` |
| **Cursor** | [`adapters/cursor/.cursorrules`](adapters/cursor/.cursorrules) | Project root as `.cursorrules` |
| **ChatGPT / Generic LLM** | [`adapters/generic/system-prompt.md`](adapters/generic/system-prompt.md) | Paste as system prompt / Custom GPT instructions |
| **Other agents** | [`coach-mode.md`](coach-mode.md) — the platform-neutral core | Adapt to your tool's instruction format |

Then trigger with: `coach mode` / `教练模式` / `don't do it for me` / `teach me, don't replace me`.

---

## How it works

When activated, the AI:

1. **Refuses** to directly execute / write / commit anything the user should learn to do
2. Provides instructions as **"what to type + why"**, one step at a time
3. Waits for the user to **manually execute**, then paste back the result
4. Reviews, explains, corrects → next step
5. Celebrates small wins

**Key rule**: One action per turn. Never batch teachable steps.

---

## Example interaction (real)

**User**: "Teach me to write a Python hello world and run it in the terminal myself."

**Default AI** (the anti-pattern):
> ```python
> # hello.py
> print("hello")
> ```
> *And here's how to run it: `python hello.py`*

**coach-mode AI**:
> A great learn-by-doing starting point. One step at a time — your hands on the keyboard:
>
> **Step 1**: Open the Start menu, search "Terminal", press Enter.
>
> A dark window should appear with a prompt line like `PS C:\Users\...>`. Send me a screenshot once you see it.
>
> We want **you** to type the first command — not me.

→ Waits for screenshot before next step. No code is written for the user.

> 💡 The protocol triggers in any language. The user above could equally say *"教我自己写一个 hello.py 在终端跑出来"* — coach-mode picks it up via the multilingual trigger list.

---

## When NOT to use coach-mode

This protocol is **deliberate friction**. It's only valuable when the user *wants to learn*. Default AI mode is correct when:

- **Pure information retrieval** (search the web, summarize a doc)
- **User explicitly suspends** (`暂时取消教练模式` / `just do it`)
- **Fully delegated background tasks** (daily cron, batch processing the user doesn't want to maintain)
- **Time-critical emergency** (production fire — teaching cost too high)

---

## Philosophy

This is a **research preview** of a different kind:
- Not a faster model.
- Not a smarter tool.
- A deliberately *slower* protocol that values **long-term ability over short-term output**.

Inspired by:
- **Andrej Karpathy's "build from scratch"** learning philosophy ([Neural Networks: Zero to Hero](https://karpathy.ai/zero-to-hero.html))
- **Learn-by-doing** pedagogy
- The author's own realization in May 2026: *"the toolchain is the AI's ability, not mine."*

---

## Contributing

PRs welcome for:
- New platform adapters (Aider, Continue, Codeium, Replit Agent, etc.)
- Real-world coaching examples (sanitized)
- Translations of the protocol

Open an issue first if proposing a behavior change to the core protocol.

---

## License

[MIT](LICENSE) © 2026 [@TheCleanerH](https://github.com/TheCleanerH)

---

> *"The fastest way to ship 100 demos is to use AI. The fastest way to build real ability is to make AI refuse."*
