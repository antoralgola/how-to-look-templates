# Rules

Outlook rules templates for the GTDo workflow.

GTDo is built entirely on **native Outlook features** — no macros, no add-ins, no code. Rules are the workhorses of the system.

## Available rules

The foundational rules of GTDo. Together they automate the categorization and add a safety net to outgoing email.

### Categorization rules
- [`to-me-equals-p1.md`](to-me-equals-p1.md) — **To = me → P1**: every email where you're in the To field is automatically marked as priority 1
- [`sent-to-waiting.md`](sent-to-waiting.md) — **Sent → Inbox → W**: every email you send becomes a tracked "waiting for" item

### Safety net
- [`defer-send-5-minutes.md`](defer-send-5-minutes.md) — **Defer send by 5 minutes**: every email is delayed by 5 minutes before leaving the outbox, giving you a grace period to catch mistakes

## Optional rules (planned)

- Mailing list categorization
- High-priority sender flagging
- Automatic archive after N days for processed emails
