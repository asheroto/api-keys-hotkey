; Name: api-keys-hotkey
; Version: 0.0.1
; Created by: asheroto
; GitHub URL: https://github.com/asheroto/api-keys-hotkey/

; Change line 25 with the names of the API keys, separated by "|" symbol
; CloudFlare, nuGet, and Magento are examples
; Also change the lines 40-51, which will type your API keys; add additional "else if" statements if needed

; If you want this to work in Administrator windows, you must run the script as Administrator
; You can also set the script to start up as a task in Scheduled Tasks, select "Run with highest privileges" to run as Administrator

; Reference for keys (use the symbol)
;	Alt		!
;	Ctrl	^
;	Shift	+
;	Win		#

#SingleInstance, Force
#InstallKeybdHook
#Hotstring EndChars `t

GUI, 1:+AlwaysOnTop -Border -SysMenu +Owner -Caption +ToolWindow

Gui, Add, ListBox, gAction vChoice w200 h60, CloudFlare|nuGet|Magento

; Press Win+Esc to bring up the GUI
#ESC::
    Gui, Show, xCenter yCenter
    Send, {Home}
return

#F4::Reload

Action:
    If ((A_GuiEvent = "DoubleClick") || (Trigger_Action))
    {
        Gui, Submit
        GuiControlGet, Choice
        if (Choice = "CloudFlare") {
            Send, cloudflare_API_KEY_GOES_HERE
        }
        else if (Choice = "nuGet")
        {
            Send, nuGet_API_KEY_GOES_HERE
        }
        else if (Choice = "Magento")
        {
            Send, magento_API_PUBLIC_KEY_GOES_HERE{ENTER}
            Send, magento_API_PRIVATE_KEY_GOES_HERE{ENTER}
        }
    }
return

#If WinActive("ahk_class AutoHotkeyGUI")

Esc::
    Gui Cancel
return

Enter:: 
    Trigger_Action := true
    GoSub, Action
    Trigger_Action := false
return

#If