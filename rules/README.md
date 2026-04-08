# Rules

Outlook rules templates for the OWN workflow.

OWN is built entirely on **native Outlook features** — no macros, no add-ins, no code. Rules are the workhorses of the system.

## Foundation rules (set these up first)

The base OWN setup. Together they automate the categorization and add a safety net to outgoing email.

### Categorization
- [`to-me-equals-p1.md`](to-me-equals-p1.md) — **To = me → P1**: every email where you're in the To field is automatically marked as priority 1
- [`sent-to-waiting.md`](sent-to-waiting.md) — **Sent → Inbox → W**: every email you send becomes a tracked "waiting for" item

### Safety net
- [`defer-send-5-minutes.md`](defer-send-5-minutes.md) — **Defer send by 5 minutes**: every email is delayed by 5 minutes before leaving the outbox, giving you a grace period to catch mistakes

## Customization rules (add after a few weeks of OWN use)

These adapt the system to your specific organizational context. They require personal judgment about which senders/aliases to target — set them up only after you've identified the patterns through manual triage.

- [`distribution-list-as-p1.md`](distribution-list-as-p1.md) — **Distribution list → P1**: extends the "To = me" logic to specific team aliases. Useful when your manager addresses requests to a team, not individuals.
- [`auto-mark-as-read.md`](auto-mark-as-read.md) — **Auto-mark as read**: hides specific senders or subjects from your search folder by marking them as read on arrival. For pure noise that doesn't deserve even a triage glance.

## Optional rules (planned)

- High-priority sender flagging
- Automatic archive after N days for processed emails
- VIP escalation (urgent flag for specific senders)
