# Rule: Distribution list → P1

A customization rule that extends the [To = me → P1](to-me-equals-p1.md) logic to specific distribution lists. Useful when your manager (or anyone in authority) sends requests to a team alias instead of addressing you directly.

## Why this rule

The [base rule](to-me-equals-p1.md) marks an email as P1 only if **your name is in the To field**. But in many organizations, managers don't address individuals — they address teams. They send requests to `team-engineering@company.com` instead of listing each team member.

Without this rule:
- Your manager sends "We need this by Friday" to the team alias
- You're a member of the alias but not in the To field
- The email arrives in your Inbox as "unread" (CC noise)
- You triage it quickly, mark as read, move on
- **You miss the request**

With this rule:
- The same email arrives
- The rule recognizes the team alias in the To field
- It assigns **P1** anyway
- The email appears under P1 in your GTDo search folder
- You see it as a direct request, because functionally it is one

## The rule

**Trigger**: Apply this rule on messages I receive

**Conditions**:
- Where **the To or Cc box contains** *(your specific distribution list address)*

Or, more precisely:
- Where **sent to** *(your distribution list, selected from the address book)*

**Actions**:
- Assign it to the **P1** category

**Exceptions**: *(optional — see below)*

## How to set it up in Outlook

1. **File** → **Manage Rules & Alerts** → **New Rule**
2. Choose **Apply rule on messages I receive** → **Next**
3. Conditions: check **sent to people or public group**
   - Click on `[people or public group]` and select your distribution list from the address book (or type the address directly)
4. **Next**
5. Actions: check **assign it to the [category] category**
   - Click on `[category]` and select **P1**
6. **Next**
7. Exceptions (optional but recommended):
   - **Except if from** [low-priority senders] — to filter out automated emails sent to the same alias
   - **Except if subject contains** [keywords] — to ignore specific topics
8. **Next** → name the rule (e.g., "GTDo: Team alias → P1") → **Finish**

## Multiple distribution lists

If you're in multiple lists that should all be treated as direct requests, you have two options:

**Option A**: Create one rule per list (cleaner, easier to maintain)

**Option B**: Add multiple addresses in the same condition (compact, but harder to debug)

Recommendation: **Option A** if you have 2-3 lists, **Option B** if you have many.

## When NOT to apply this rule

Don't apply this rule to **any** distribution list you're on. Most distribution lists carry pure information, not requests:
- Company-wide announcements → noise, leave as unread
- Marketing newsletters → noise
- Product update mailing lists → noise
- Vendor notifications → noise

Apply it **only** to lists where someone with authority sends actual requests to your team.

## Tip: combine with sender filter

You can refine the rule further by adding a "from" condition:
- Where **from** [your manager's email] AND **sent to** [team alias]

This ensures only your manager's emails to the team get P1, not every team member's reply-all.

## Why this isn't in the base setup

This rule depends on **your specific organizational context**: which distribution lists exist, who uses them for what. There's no one-size-fits-all version. The book recommends adding this rule once you've used GTDo for a few weeks and identified the specific aliases that systematically carry requests.
