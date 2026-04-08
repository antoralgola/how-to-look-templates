# Search Folder: YOWN (Your OWN view)

The single search folder that powers the entire OWN workflow. This is **YOWN** — *Your OWN view* — the only view of your inbox you should ever need during the day. It implements the **OWN method** (Observe / Weigh / Navigate) in your Outlook.

## What it shows

A combined view of:
- **All unread emails** (typically: emails where you're in CC — informational noise to be triaged)
- **All P1 emails** (direct requests where you're in To)
- **All P2 emails** (medium priority, manually categorized)
- **All P3 emails** (low priority, manually categorized)
- **All W emails** (Waiting for — sent emails you're tracking, populated by the [`sent-to-waiting`](../rules/sent-to-waiting.md) rule)

When grouped by category, this becomes a single, ordered, color-coded action list that fits in one screen.

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
| `categories contains P1` | Auto-populated by the "To = me → P1" rule. These are direct requests. |
| `categories contains P2` | Manually assigned. Important but not urgent. |
| `categories contains P3` | Manually assigned. Lower priority but still actionable. |
| `categories contains W` | Auto-populated by the "Sent → Inbox → W" rule. Your follow-ups. |

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

You need these categories to exist in Outlook before the search folder can populate properly:

| Category | Color (suggested) | Meaning | Assigned by |
|---|---|---|---|
| **P1** | Magenta / pink | Direct request, act today or this week | Auto-rule (To = me) |
| **P2** | Lime green | Medium priority | Manually |
| **P3** | Yellow | Low priority | Manually |
| **W** | Purple | Waiting for (sent emails) | Auto-rule (Sent → Inbox) |

To create them: **Home** → **Categorize** → **All Categories** → **New**.
