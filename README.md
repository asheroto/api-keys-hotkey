
# API Keys Hotkey

Simple AutoHotkey script you can edit to add your API keys and press Win+Esc to bring them up.

![Script Example](https://github.com/asheroto/api-keys-hotkey/raw/master/example.gif)

# Prerequisites

-  [AutoHotkey](https://www.autohotkey.com/)
- Code editor **with line numbers**, like `Notepad++` or preferably [Visual Code](https://code.visualstudio.com/)
- Basic scripting knowledge  

# Install

-  [Save the API.ahk file](https://raw.githubusercontent.com/asheroto/api-keys-hotkey/master/API.ahk) to your computer as `API.ahk` or `ANYTHING.ahk`
- Follow instructions at the **top of the file**
- Once everything is changed, **save it and run it**
- You may need to "Run as Administrator" in order for it to type on Administrator windows, see script notes
- Optionally you can **compile the script to an EXE file**

# Troubleshooting
- Make sure you have the latest version of AutoHotkey
- Make sure your API names are identical in the "if" statements, case sensitive
- If it doesn't work in some windows, it may be because that window is running as Administrator; run the script as Administrator and it should work then; you can run it in Scheduled Tasks with "Run with highest privileges" checked and then it will automatically start as Administrator