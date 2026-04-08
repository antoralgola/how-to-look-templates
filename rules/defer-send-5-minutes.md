# Rule: Defer send by 5 minutes

A simple but powerful rule: every email you send is **delayed by 5 minutes** before actually leaving your outbox. You get a 5-minute grace period to catch mistakes, change your mind, or add that attachment you forgot.

## Why this rule

How many times have you:
- Hit Send and immediately noticed a typo in the subject?
- Forgotten the attachment and had to send a follow-up "sorry, here it is"?
- Sent an email in anger and wanted to take it back?
- Realized you forgot to CC someone important?

Outlook has no native "unsend" feature. But it has **Deferred Delivery** in the rules engine. Combined with a simple condition, you can give yourself a 5-minute safety net **on every email you send**, automatically.

## How it works

When the rule is active:
1. You write an email and hit Send
2. The email goes to **Outbox**, not to the recipient
3. After 5 minutes, Outlook delivers it
4. If during those 5 minutes you realize something is wrong, open the Outbox, edit the email or delete it

The cost is minimal (5 minutes is rarely critical for any business email) and the safety is enormous.

## The rule

**Trigger**: Apply this rule after I send the message

**Conditions**: *(none — applies to all sent emails by default)*

**Actions**:
- Defer delivery by **5 minutes**

**Exceptions**:
- Except if **sent to** *(your own email address)*
- Except if **it is a meeting invitation or update**

### Why these exceptions

- **Emails to yourself**: you often use self-emails for quick notes, test, or to bookmark something. You want them instant.
- **Meeting invitations and updates**: deferring a calendar invite causes confusion — recipients see the meeting appear "in the past" relative to when you sent it. Calendar items should always go immediately.

## How to set it up in Outlook

1. **File** → **Manage Rules & Alerts** → **New Rule**
2. Choose **Apply rule on messages I send** → **Next**
3. Conditions: leave all unchecked → **Next** → **Yes** (apply to all sent messages)
4. Actions: check **defer delivery by a number of minutes**
   - Click on `[a number of]` and set **5**
5. **Next**
6. Exceptions:
   - Check **except if sent to people or public group** → click and add your own email address
   - Check **except if it is a meeting invitation or update**
7. **Next** → name the rule (e.g., "GTDo: Defer send 5 min") → **Finish**

## Compatibility with other GTDo rules

This rule plays nicely with the [`sent-to-waiting`](sent-to-waiting.md) rule. The deferred email will still get categorized as W and copied to the Inbox when it actually leaves the Outbox after 5 minutes.

**Order matters less than you'd think**: Outlook applies all matching "after I send" rules to the same message. The defer + the W categorization both happen, in any order.

## When 5 minutes isn't enough

If you regularly want a longer safety net (10-15 min), you can increase the value. But experience shows 5 minutes is the sweet spot:
- Long enough to catch most mistakes (typically you realize within 30 seconds)
- Short enough that no recipient notices a delay
- Doesn't break async workflows

## What this is NOT

This is **not** a "scheduled send" feature. Use Outlook's manual scheduled send for that (right-click Send → Schedule). The defer rule is automatic, applies to everything, and is designed as a safety net — not a productivity hack to "send during business hours".
