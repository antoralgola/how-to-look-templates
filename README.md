# How to Look — Templates & Configurations

Outlook templates, search folder definitions, rules, and setup guides for the **OWN** workflow described in the book *How to Look — The Outlook Workflow for the AI Era*.

> *How to keep your attention on what matters, when AI handles the routine and email tries harder than ever to steal your focus.*

The pun in the title:
- *How to **Out**look* — how to use Outlook
- *How to **Look*** — how to *look*, where to put your attention. In the AI era, this is the only thing that's still entirely yours.

The method is called **OWN**:
- **O**bserve — see what's arriving (triage, separate signal from noise)
- **W**eigh — decide what matters (categories, priorities)
- **N**avigate — move through the flow without drowning (workflow, deep work, follow-up)

The view that implements OWN in your Outlook is called **YOWN** (= **Your OWN** view) — a personal search folder that shows only what deserves your attention. Build your YOWN. Keep it clean. YOWN to zero.

*OWN your inbox. OWN your attention. OWN your look.*

---

## What is OWN?

OWN is a custom workflow that turns Outlook from a source of stress into a productivity tool. It combines:

- **Inbox Zero** best practices
- **GTD** task management (priorities, contexts, next actions)
- **Outlook Search Folders** as logical views (no manual foldering)
- **Native Outlook rules** to automate categorization (no macros, no add-ins, no code)

The result: ~50% time saved on email handling, an Email Action List (EAL) that stays short and organized, and a clear separation between *processing* email and *acting* on it.

## Native first

Everything in this repository uses **standard Outlook features only**. No VBA macros, no third-party add-ins, no code to write or maintain. This is a deliberate design choice:

- **Easy setup**: configuration via standard menus, no technical knowledge required
- **Portable**: rules and categories sync across devices via Exchange/M365
- **Reliable**: native features aren't disabled by IT policies
- **Zero maintenance**: no code that breaks with Outlook updates
- **Reproducible**: anyone can follow the book without prerequisites

## Repository contents

```
.
├── search-folders/      Search folder definitions (the OWN Main view)
├── rules/               Outlook rules templates (the two foundational rules)
├── docs/                Setup guides, registry hacks, walkthroughs
├── README.md            This file
└── LICENSE
```

## Quick start

The complete walkthrough is in the book. Here's the minimal setup:

### 1. Create the categories
In Outlook: **Home** → **Categorize** → **All Categories** → **New**

| Category | Color | Meaning |
|---|---|---|
| **P1** | Magenta | Direct request, act today/this week |
| **P2** | Lime green | Medium priority |
| **P3** | Yellow | Low priority |
| **W** | Purple | Waiting for (sent emails) |

### 2. Enable the Advanced Query Builder
Required to create the OWN Main search folder with OR logic. See [`docs/enable-query-builder.md`](docs/enable-query-builder.md).

### 3. Create the OWN Main search folder
The single view that powers the entire workflow. See [`search-folders/yown.md`](search-folders/yown.md).

### 4. Set up the two foundational rules
- [`rules/to-me-equals-p1.md`](rules/to-me-equals-p1.md) — emails to you become P1 automatically
- [`rules/sent-to-waiting.md`](rules/sent-to-waiting.md) — emails you send become tracked waiting-for items

### 5. Start processing
Open the OWN search folder. Group by Categories. Triage Unread (typically CC noise) by marking as read. Work on P1 first, then P2/P3, then W.

## The book

This repository accompanies the book **How to Look — The Outlook Workflow for the AI Era**.

The book covers:
- **Why this matters** — the email problem in the age of AI
- **Principles** — the foundations of OWN (including the "Native first" principle)
- **Setup** — tools and applications
- **Configuration** — how to set up Outlook for OWN (uses files in this repo)
- **Standard Workflow** — daily processing routine
- **Beyond email: protect your time** — time blocking and Pomodoro for Focused Work
- **Use Cases** — concrete examples
- **Portability: Gmail and beyond** — applying OWN to Gmail
- **The AI shift** — how Copilot, Gemini, and AI agents change the email workflow (and what doesn't change)
- **Values** — why "how to look" matters more than ever in the AI era

*Book in progress. Self-published. Target audience: knowledge workers in the post-Copilot era — people who handle 50-200 emails/day and wonder if their workflow still makes sense now that AI is in the loop.*

## License

MIT — see [`LICENSE`](LICENSE).

## Contributing

This is a personal project tied to a book in progress. Issues and discussions are welcome; pull requests will be considered after the first stable release.
