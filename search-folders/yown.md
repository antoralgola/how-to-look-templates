# Search Folder: YOWN (Your OWN view)

The single search folder that powers the entire OWN workflow. This is **YOWN** — *Your OWN view* — the only view of your inbox you should ever need during the day. It implements the **OWN method** (Observe / Weigh / Navigate) in your Outlook.

## What it shows

A combined view of:
- **All unread emails** (typically: emails where you're in CC — informational noise to be triaged)
- **All P1 emails** — to do today (direct requests, urgent items)
- **All P2 emails** — to do tomorrow
- **All P3 emails** — to do next week
- **All W emails** — Waiting for replies to your sent emails (populated by the [`sent-to-waiting`](../rules/sent-to-waiting.md) rule)

When grouped by category, this becomes a single, ordered, color-coded action list that fits in one screen. The categories form a natural time progression: today → tomorrow → next week → waiting.

## The query (Advanced Query Builder)

This search folder cannot be created with Outlook's standard search folder dialog — it requires the **Advanced Query Builder**, which is hidden by default. See [Enable Query Builder](../docs/enable-query-builder.md) for the registry hack to expose it.

Once Query Builder is available, create the search folder with these conditions joined by **OR**:

```
OR
├── read equal to No
├── categories contains P1
├── categories contains P2
├── categories contains P3
└── categories contains W
```

## Why each condition

| Condition | Purpose |
|---|---|
| `read = No` | Catches every new email that arrives, before you've categorized it. Most of these will be CC (informational) and you'll dismiss them by marking as read. |
| `categories contains P1` | Today's actions. Auto-populated by the "To = me → P1" rule for direct requests. |
| `categories contains P2` | Tomorrow's actions. Manually assigned. |
| `categories contains P3` | Next week's actions. Manually assigned. Batch process when time allows. |
| `categories contains W` | Waiting for replies. Auto-populated by the "Sent → Inbox → W" rule. |

## Why a single search folder

The first version of OWN used multiple folders/views. It failed for the reasons explained in Chapter 2: foldering creates cognitive load.

A single search folder:
- **One place to look**: no decision about which view to open
- **Ordered automatically by category**: just group by Categories field
- **Color-coded**: each category has a distinct color, priority is visible at a glance
- **Self-cleaning**: as you read CC emails and process P1/P2/P3 items, they disappear from the view

## How to set it up in Outlook

### Prerequisite
[Enable Query Builder](../docs/enable-query-builder.md) via registry edit.

### Steps
1. **Folder** tab → **New Search Folder** → scroll to bottom → **Create a custom Search Folder** → **Choose**
2. Name it: **OWN** (or whatever you prefer)
3. Click **Criteria** → switch to the **Advanced** tab (or the **Query Builder** tab if registry hack is applied)
4. Add conditions joined by OR (see query above)
5. Save → the search folder appears in the navigation pane
6. **Recommended**: drag it to **Favorites** at the top of the navigation pane for one-click access
7. **Recommended**: change the View to group by **Categories** (View → Arrange By → Categories)

## View configuration (recommended)

To make the search folder usable as an Email Action List:

- **Group by**: Categories
- **Sort within group by**: Received (newest first) or Importance
- **Show**: Subject, From, Received, Categories
- **Reading pane**: Right side
- **Compact view** with single-line items

## Categories required

You need these categories to exist in Outlook before the search folder can populate properly. OWN classifies emails by **when** they need to be handled:

| Category | When | Color (suggested) | Assigned by |
|---|---|---|---|
| **P1** | **Today** — must be done by end of day | Magenta / red | Auto-rule (To = me) |
| **P2** | **Tomorrow** — can wait 1 day, no more | Orange / amber | Manually |
| **P3** | **Next week** — can be deferred, batch process | Yellow / lime | Manually |
| **W** | **Waiting** — sent emails awaiting reply | Purple | Auto-rule (Sent → Inbox) |

To create them: **Home** → **Categorize** → **All Categories** → **New**.

**The re-evaluation rule**: every morning, P2 and P3 items get reviewed. Yesterday's P2 becomes today's P1. Last week's P3 becomes this week's P2 or P1. Categories are not fixed labels — they reflect the time you have left to act.
