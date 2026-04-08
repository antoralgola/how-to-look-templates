# Rule: Auto-mark as read (filter pure noise)

The opposite of categorization rules: this rule **hides** emails from the OWN search folder by marking them as read automatically. Used for emails that don't even deserve a glance during triage.

## Why this rule

The [OWN Main search folder](../search-folders/gtdo-main.md) shows all unread emails. This is intentional — unread emails are the ones you haven't triaged yet, including all CC noise.

But some emails are **pure noise**, every single time:
- System notifications ("Backup completed successfully")
- Newsletter recaps you signed up for once and never read
- Mailing lists that occasionally have something interesting but mostly don't
- Calendar reminders from third-party tools
- Build/deploy notifications, monitoring alerts (if you're in IT)

For these, even the few seconds of triage are wasted. You don't need to see them at all. They should:
1. Arrive in your Inbox (so they're searchable later if needed)
2. NOT appear in your OWN search folder
3. NOT trigger any new-email indicator

The way to do this is to mark them as **already read** the moment they arrive.

## How it works

A normal rule cannot mark an email as read directly — Outlook's built-in actions don't include "mark as read". But there's a workaround using the **Stop processing more rules** + custom flag combination, or you can use **Outlook's native "Mark as read" action** which is available in some versions.

### The simplest method: use the "Mark as read" action

If your version of Outlook supports it:
1. **File** → **Manage Rules & Alerts** → **New Rule** → **Apply rule on messages I receive**
2. Set conditions (see below)
3. Action: **mark it as read**
4. Save

### If "mark as read" isn't available

Older versions of Outlook may not have this action directly. In that case, the workaround is:
1. Configure a rule that **moves** the email to a folder (you can choose Inbox itself if you want it to stay there)
2. The action of "moving" within Outlook can be combined with custom MAPI scripting — but this would violate the **Native first** principle of OWN

If you're on a version without native "mark as read", a better approach is **Search Folders that exclude these senders/subjects** — see the alternative below.

## Common conditions to use

### Mark as read by sender
```
From: noreply@example.com
Action: mark it as read
```

For automated systems that send notifications you don't need to see.

### Mark as read by subject pattern
```
Subject contains: "Build Successful"
Action: mark it as read
```

For repetitive automated emails. Note: this is **specific keywords**, not the whole subject.

### Mark as read by combination
```
From: monitoring-system@company.com
AND Subject contains: "[INFO]"
Action: mark it as read
```

The most precise: only INFO-level alerts from a specific system, not WARNING or ERROR.

## Set it up in Outlook

1. **File** → **Manage Rules & Alerts** → **New Rule**
2. Choose **Apply rule on messages I receive** → **Next**
3. Conditions: select what you want to filter (from, subject contains, sent to a specific group, etc.)
4. **Next**
5. Actions: check **mark it as read**
6. **Next** → exceptions if any → **Next** → name → **Finish**

## Alternative: exclude from the OWN search folder

If your Outlook version doesn't have a native "mark as read" action, you can achieve the same effect by **modifying the OWN Main search folder** to exclude certain senders or subjects.

In the Query Builder, add conditions joined with AND NOT:
```
(read = No OR P1 OR P2 OR P3 OR W)
AND from NOT noreply@example.com
AND from NOT monitoring-system@company.com
```

This is more fragile (the search folder grows complex) but doesn't require additional rules.

## Cautions

### Don't over-filter
The temptation is to mark as read everything that "feels like noise". Resist:
- Some "noise" emails contain actionable information once a month
- If you mark it as read, you'll never know
- Better to mark as read only emails you're 100% sure are pure noise

**Test**: before adding a sender to this rule, ask yourself "in the last year, has any email from this sender been useful?" If yes (even once), don't add it. Triage manually.

### Periodically review what you've filtered
Once a quarter, search your Inbox for emails marked as read by these rules. Spot-check a few. If you find anything important, refine the rules.

### Combine with archiving
Marking as read keeps the email in your Inbox forever. Consider pairing this rule with an **automatic archiving** rule that moves emails older than N days to an archive folder, so your Inbox doesn't bloat.

## Why this is "advanced"

This rule requires personal judgment about what is and isn't noise. The book recommends adding it **only after you've used OWN for at least a month**, so you have data on which senders systematically waste your triage time.

The base OWN setup deliberately doesn't filter anything — it shows you everything unread, and you decide. Once you've made the same "mark as read and ignore" decision 10 times for the same sender, that's the moment to automate it with this rule.
