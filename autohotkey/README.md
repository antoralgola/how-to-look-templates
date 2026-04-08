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

## Planned scripts

### Categorization shortcuts
Map function keys to OWN categories for one-press categorization:
- `F1` → assign **P1** to selected email
- `F2` → assign **P2**
- `F3` → assign **P3**
- `F4` → assign **W**
- `F5` → clear all categories

### Triage acceleration
- `Ctrl+Q` (or another key) → mark as read + move to next email
- `Ctrl+Shift+Q` → mark as read + assign P3 + next (for "interesting but not now")

### Quick reply templates
- `Ctrl+Alt+1` → insert "Got it, I'll get back to you by tomorrow" + signature
- `Ctrl+Alt+2` → insert "Thanks for the update, no action needed on my side"

### Batch operations
- Process all unread emails from a specific sender
- Apply category to multiple emails at once

## Setup

1. Install AutoHotkey from https://www.autohotkey.com/
2. Download the script(s) from this folder
3. Double-click the `.ahk` file to run, or set it to start with Windows
4. Customize the keybindings in the script if needed

## Repository status

*(Scripts to be added. The book chapter on AHK is in development.)*
