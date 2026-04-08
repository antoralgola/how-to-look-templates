# Rule: Sent → Inbox → W (Waiting)

One of the foundational rules of OWN. Every email you send becomes a "waiting for" item that you can track in your Inbox.

## Why this rule

When you send an email asking someone to do something, you're delegating. GTD calls these items "waiting for" — things that are out of your hands but you still need to track until the other person responds.

Without this rule:
- You send the email and forget about it
- Two weeks later you remember and search through your Sent folder
- The thread is cold, the request is overdue

With this rule:
- A copy of every sent email lands in your Inbox, automatically categorized as **W** (Waiting)
- It appears in your OWN search folder
- You can review your "waiting for" items at any time
- Once the other person replies, you process the reply and remove the W category

## The rule

**Trigger**: Apply this rule after I send the message

**Conditions**: *(none — applies to all sent emails)*

**Actions**:
1. Assign it to the **W** category
2. Move a copy to the **Inbox** folder

**Exceptions**:
- Except if the **subject contains** `Accepted:` or `Declined:`
- Except if it is a **meeting invitation or update**

The exceptions prevent calendar acceptances/declines and meeting invites from cluttering your Inbox — they're transactional, not "waiting for" items.

## How to set it up in Outlook

1. **File** → **Manage Rules & Alerts** → **New Rule**
2. Choose **Apply rule on messages I send** → **Next**
3. Conditions: leave all unchecked → **Next** → **Yes** (apply to all)
4. Actions: check **assign it to the [category] category** and **move a copy to the [specified] folder**
   - Click on `[category]` and select your **W** category (create it first if needed)
   - Click on `[specified]` and select your **Inbox**
5. **Next**
6. Exceptions: check **except if the subject contains specific words** and add `Accepted:` and `Declined:`
7. Check **except if it is a meeting invitation or update**
8. **Next** → name the rule (e.g., "OWN: Sent → Waiting") → **Finish**

## Prerequisites

- The **W** category must exist in your Outlook (Categorize → All Categories → New)
- Recommended color: yellow or amber (waiting state)

## Why this replaces the old VBA macro

An earlier version of this workflow used a VBA macro to BCC yourself on every sent email. The native rule has several advantages:
- **Portable**: rules sync across devices via Exchange/M365, macros don't
- **Reliable**: macros can be disabled by IT policy, rules can't
- **No code**: anyone can set it up without VBA knowledge
- **Cleaner**: a copy in Inbox is more elegant than BCC noise in the recipient list
