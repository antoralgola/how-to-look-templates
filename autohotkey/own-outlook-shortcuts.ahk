; ========================================================================
; OWN Method — Outlook AutoHotkey Shortcuts (AHK v1)
; ========================================================================
;
; AutoHotkey shortcuts for the OWN method (How to Look book).
; Accelerates email triage, categorization, and navigation in Outlook.
;
; Native Outlook rules + categories already automate ~80% of OWN.
; This script adds the remaining 20% — keyboard/mouse shortcuts for
; manual operations that you do dozens of times per day.
;
; CUSTOMIZE BEFORE USE:
;   - Adjust category shortcut numbers if your Outlook uses different
;     keyboard shortcuts for Categorize > [your categories]
;   - In Outlook: Categorize > All Categories > assign Ctrl+F2..Ctrl+F12
;     to your P1, P2, P3, W categories (Outlook only allows F2-F12)
;
; INSTALLATION:
;   1. Install AutoHotkey v1.x from https://www.autohotkey.com/
;   2. Save this file as own-outlook-shortcuts.ahk
;   3. Double-click to run (icon appears in tray)
;   4. Optional: place in Startup folder to auto-launch with Windows
;
; ========================================================================


; ========================================================================
; SECTION 1 — Outlook window shortcuts
; ========================================================================
; These shortcuts only activate when Outlook is the active window.
#IfWinActive ahk_exe OUTLOOK.EXE


; ----- Mouse-driven categorization (Alt + mouse buttons) -----------------
; The fastest categorization method: keep your hand on the mouse during
; triage. Alt + click/wheel assigns categories without touching the keyboard.
;
; Outlook category keyboard shortcuts:
;   Ctrl+F2 = first category in your list
;   Ctrl+F3 = second
;   ... and so on
; Adjust the {F2}-{F6} below to match YOUR category order in Outlook.

!LButton::    Send ^{F2}    ; Alt + Left click   = P1 (priority 1)
!RButton::    Send ^{F3}    ; Alt + Right click  = P2 (priority 2)
!MButton::    Send ^{F4}    ; Alt + Middle click = P3 (priority 3)
!WheelDown::  Send ^{F5}    ; Alt + Wheel down   = W  (waiting for)
!WheelUp::                  ; Alt + Wheel up     = mark done (clear all categories)
    Send ^{F6}
    Sleep 100
Return


; ----- Quick navigation between folders ---------------------------------
; Switch between Inbox, YOWN search folder, and Sent with Alt+1/2/3.

!1::    ; Alt + 1 = Inbox
    Send, ^1            ; Switch to mail view
    Sleep, 100
    Send, ^y            ; Open "Go to Folder" dialog
    Sleep, 100
    Send, Inbox{Enter}
Return

!2::    ; Alt + 2 = YOWN (your search folder — rename if needed)
    Send, ^1
    Sleep, 100
    Send, ^y
    Sleep, 100
    Send, YOWN{Enter}
Return

!3::    ; Alt + 3 = Sent Items
    Send, ^1
    Sleep, 100
    Send, ^y
    Sleep, 100
    Send, Sent{Enter}
Return


#IfWinActive  ; end of Outlook-specific section


; ========================================================================
; SECTION 2 — Outlook email grid (list view) shortcuts
; ========================================================================
; These shortcuts only activate when the email list (OutlookGrid) is focused.
; They give you single-key categorization and vim-like navigation.

#If ActiveControlIsOfClass("OutlookGrid")


; ----- Vim-like navigation -----------------------------------------------
; QWERTY layout (right-hand cluster):
;   i = up,    k = down,    j = left,    l = right
; Alternative left-hand layout:
;   e = up,    d = down,    s = left,    f = right

i:: Send {Up}
k:: Send {Down}
j:: Send {Left}
l:: Send {Right}

e:: Send {Up}
d:: Send {Down}
s:: Send {Left}
f:: Send {Right}

!e:: Send {PgUp}    ; Alt + e = page up
!d:: Send {PgDn}    ; Alt + d = page down


; ----- Quick reply / forward --------------------------------------------
r:: Send ^+r         ; r = reply to all
w:: Send ^f          ; w = forward


; ----- Single-key categorization ----------------------------------------
; Press a number to categorize the highlighted email.
; Same mapping as the Alt+mouse buttons in Section 1.
; Adjust {F2}-{F6} to match your Outlook category shortcuts.

1:: Send ^{F2}       ; 1 = P1
2:: Send ^{F3}       ; 2 = P2
3:: Send ^{F4}       ; 3 = P3
4:: Send ^{F5}       ; 4 = W (waiting)


; ----- Mark as done / dismiss -------------------------------------------
; Space or Backspace = "I'm done with this email, clear and move on"
; Removes all categories so the email disappears from the YOWN view.

Space::
BackSpace::
    Send ^{F6}       ; clear category (or assign "done" category if you have one)
    Sleep 100
Return


#If  ; end of OutlookGrid-specific section


; ========================================================================
; Helper function: detect when a specific control is active
; ========================================================================
ActiveControlIsOfClass(Class) {
    ControlGetFocus, FocusedControl, A
    ControlGet, FocusedControlHwnd, Hwnd,, %FocusedControl%, A
    WinGetClass, FocusedControlClass, ahk_id %FocusedControlHwnd%
    return (FocusedControlClass = Class)
}

; ========================================================================
; END OF SCRIPT
; ========================================================================
;
; To customize further:
;   - Add your own hotkeys following the same pattern
;   - The book chapter on AHK explains the philosophy (Cap. 8)
;   - Repo: https://github.com/antoralgola/how-to-look-templates
