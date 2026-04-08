# How to Look — Templates & Configurations

Outlook templates, search folder definitions, rules, and setup guides for the **GTDo** workflow described in the book *How to Look* — a practical guide to applying [Getting Things Done](https://gettingthingsdone.com/) principles inside Microsoft Outlook.

> *"How to Outlook" — but also "How to Look": the real superpower is not technology or automation, it's knowing where to put your attention.*

---

## What is GTDo?

GTDo is a custom workflow that turns Outlook from a source of stress into a productivity tool. It combines:

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
├── search-folders/      Search folder definitions (the GTDo Main view)
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
Required to create the GTDo Main search folder with OR logic. See [`docs/enable-query-builder.md`](docs/enable-query-builder.md).

### 3. Create the GTDo Main search folder
The single view that powers the entire workflow. See [`search-folders/gtdo-main.md`](search-folders/gtdo-main.md).

### 4. Set up the two foundational rules
- [`rules/to-me-equals-p1.md`](rules/to-me-equals-p1.md) — emails to you become P1 automatically
- [`rules/sent-to-waiting.md`](rules/sent-to-waiting.md) — emails you send become tracked waiting-for items

### 5. Start processing
Open the GTDo search folder. Group by Categories. Triage Unread (typically CC noise) by marking as read. Work on P1 first, then P2/P3, then W.

## The book

This repository accompanies the book **How to Look — A practical guide to GTDo for Outlook**.

The book covers:
- **Why this matters** — the email problem in modern knowledge work
- **Principles** — the foundations of GTDo (including the "Native first" principle)
- **Setup** — tools and applications
- **Configuration** — how to set up Outlook for GTDo (uses files in this repo)
- **Standard Workflow** — daily processing routine
- **Beyond email: protect your time** — time blocking and Pomodoro for Focused Work
- **Use Cases** — concrete examples
- **Portability: Gmail and beyond** — applying GTDo to Gmail
- **The AI shift** — how AI is changing the email workflow
- **Values** — why "how to look" matters beyond Outlook

*(Book in progress. Self-published. Target audience: knowledge workers handling 50-200 emails/day.)*

## License

MIT — see [`LICENSE`](LICENSE).

## Contributing

This is a personal project tied to a book in progress. Issues and discussions are welcome; pull requests will be considered after the first stable release.
