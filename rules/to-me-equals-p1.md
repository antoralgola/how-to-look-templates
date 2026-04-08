# Rule: To = me → P1

The second foundational rule of OWN. Automatically marks every email where **you are in the To field** as priority **P1**.

## Why this rule

In any email-heavy environment, the difference between being **in To** and being **in CC** is the difference between **a request** and **information**.

- **In To** = the sender expects something from you. A response, a decision, an action.
- **In CC** = the sender wants you to be aware. No action expected.

This is one of the most important — and most ignored — distinctions in email etiquette. OWN encodes it as a rule: every email addressed directly to you is **P1** (priority 1) by default.

You can downgrade later (P2 or P3) if upon reading you realize it's not actually urgent. But the default is "this matters".

## The rule

**Trigger**: Apply this rule on messages I receive

**Conditions**:
- Where **my name is in the To box**

**Actions**:
- Assign it to the **P1** category

**Exceptions**: *(none — but you can add them if certain senders systematically over-To you)*

## How to set it up in Outlook

1. **File** → **Manage Rules & Alerts** → **New Rule**
2. Choose **Apply rule on messages I receive** → **Next**
3. Conditions: check **where my name is in the To box** → **Next**
4. Actions: check **assign it to the [category] category**
   - Click on `[category]` and select **P1** (create it first if needed)
5. **Next**
6. Exceptions: leave empty (or add specific senders who abuse the To field)
7. **Next** → name the rule (e.g., "OWN: To = me → P1") → **Finish**
8. **Important**: Run the rule on existing messages in the Inbox at least once — check the option in the next dialog

## Prerequisites

- The **P1** category must exist in your Outlook (Categorize → All Categories → New)
- Recommended color: magenta or red (high priority signal)

## How this combines with the OWN Search Folder

Together with the [OWN Main search folder](../search-folders/yown.md), this rule produces the daily workflow:

1. New email arrives
2. If you're in To → automatically P1 → appears in the OWN search folder grouped under P1
3. If you're in CC → no category → appears in the OWN search folder under "Unread"
4. You triage Unread (mark as read, they vanish)
5. You work on P1 first, then P2/P3

The result: every morning, you see exactly what needs your attention, ordered by importance, without having to think about what to look at.

## What about emails to a distribution list where you're a member?

These typically come without your name in the To field (the list is in To, not you). They go to the Unread bucket, where they should be — they're rarely direct requests.

If you have specific distribution lists that ARE direct requests (e.g., a small team alias), you can add a separate rule to mark those as P1 too.
