# AutoHotkey scripts

Optional AutoHotkey scripts to automate repetitive tasks in the OWN workflow.

⚠️ **Read this first**: AutoHotkey scripts go beyond the **Native first** principle of OWN. They're an optional power-user tool for cases where the native Outlook rules aren't enough. The book recommends adding AHK scripts only **after** you've used OWN for at least a month and identified specific repetitive sequences in your daily workflow.

## Why AutoHotkey instead of VBA macros

The book deliberately avoids VBA macros because:
- They're often disabled by corporate IT policies
- They don't sync across devices
- They break with Outlook updates

[AutoHotkey](https://www.autohotkey.com/) is different:
- **External tool**, doesn't modify Outlook itself
- **Not blocked** by email/macro security policies
- **Easy to remove**: close AHK, everything goes back to normal
- **Free and open source**
- **Lightweight**: runs as a tray icon, minimal resource use

The trade-off: AHK only works on Windows, and it cannot access Outlook's internal data (it works through keyboard shortcuts and window manipulation).

## Available scripts

### [`own-outlook-shortcuts.ahk`](own-outlook-shortcuts.ahk)
The main AHK script for OWN. Three groups of shortcuts:

**Mouse-driven categorization** (the fastest way to triage):
- `Alt + Left click` → assign **P1**
- `Alt + Right click` → assign **P2**
- `Alt + Middle click` → assign **P3**
- `Alt + Wheel down` → assign **W** (waiting)
- `Alt + Wheel up` → mark done (clear all categories)

**Folder navigation** (hands stay on keyboard):
- `Alt + 1` → go to Inbox
- `Alt + 2` → go to YOWN (search folder)
- `Alt + 3` → go to Sent

**Email list grid shortcuts** (vim-like, single-key):
- `i / k / j / l` (or `e / d / s / f`) → up / down / left / right
- `1 / 2 / 3 / 4` → categorize as P1 / P2 / P3 / W
- `Space` or `Backspace` → mark done (clear categories)
- `r` → reply all
- `w` → forward

## Setup

1. Install AutoHotkey v1.x from https://www.autohotkey.com/
2. Download [`own-outlook-shortcuts.ahk`](own-outlook-shortcuts.ahk) from this folder
3. **Customize the category shortcuts** before running:
   - In Outlook: `Categorize` → `All Categories` → assign keyboard shortcuts to your P1, P2, P3, W categories
   - Outlook only allows shortcuts in the range Ctrl+F2 to Ctrl+F12
   - Adjust the `{F2}`, `{F3}`, etc. in the script to match what you assigned
4. Double-click the `.ahk` file to run (icon appears in system tray)
5. Optional: place a shortcut in your Startup folder to auto-launch with Windows

## Why these specific shortcuts

### Mouse + Alt for triage
During triage, your hand is naturally on the mouse to scroll and click on emails. Adding `Alt + click` for categorization means you don't need to move your hand to the keyboard. After a few days it becomes muscle memory.

### Single-key in the grid
When you're in the email list and you've selected an email, pressing `1` to mark it P1 is faster than `Ctrl+F2`. This works because the grid view doesn't need text input — single keys can be repurposed safely.

### Vim-like navigation
For power users coming from Vim/Linux. Optional but very fast once learned. The script supports both layouts (`ijkl` for right hand, `esdf` for left hand) so you can choose.

### Space = Done
The most natural "I'm finished with this" gesture.

## What this script does NOT do

By design, this script:
- **Does not modify Outlook itself** — only sends keystrokes
- **Does not access email content** — no COM, no API
- **Does not contain personal data** — no email addresses, no API keys
- **Does not require admin rights** — runs in user space
- **Does not create rules or search folders** — those are native Outlook (see `../rules/` and `../search-folders/`)

If you need automation that touches Outlook's internal data (e.g., reading email body, sending API calls), you'll need VBA or the Outlook COM API — which violates the Native first principle. Don't go there unless you really need to.

## When NOT to use this script

- **You're new to OWN**: use the native rules first for at least a month. Don't optimize what you haven't observed.
- **You're on a Mac**: AutoHotkey is Windows-only. On Mac, look at Karabiner-Elements or Hammerspoon.
- **Your IT policy forbids AHK**: some highly regulated companies block all third-party automation tools. Check your policy first.
- **You don't customize the category shortcuts**: the script will send keystrokes that don't match your Outlook setup, doing nothing useful.

## Planned additions

- Quick reply templates (Ctrl+Alt+1 → insert "Got it, I'll get back to you by tomorrow")
- Batch operations on emails from a specific sender
- Meeting-time guard (block all email shortcuts during a Focused Work calendar block)
