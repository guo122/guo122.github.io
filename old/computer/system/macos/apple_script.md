
# Apple Script

```
osascript <...scpt>
```

twist

```
tell application "System Preferences"
	activate
end tell

tell application "System Events"
	tell process "System Preferences"
		delay 1
		click menu item "Keyboard" of menu "View" of menu bar 1
		--entire contents
		delay 0.1
		click button "Modifier Keys…" of tab group 1 of window "Keyboard" of application process "System Preferences" of application "System Events"

		-- option to cmd
		click pop up button "Option (⌥) Key:" of sheet 1 of window "Keyboard" of application process "System Preferences" of application "System Events"
		click menu item "⌘ Command" of menu 1 of pop up button "Option (⌥) Key:" of sheet 1 of window "Keyboard" of application process "System Preferences" of application "System Events"
		-- cmd to option
		click pop up button "Command (⌘) Key:" of sheet 1 of window "Keyboard" of application process "System Preferences" of application "System Events"
		click menu item "⌥ Option" of menu 1 of pop up button "Command (⌘) Key:" of sheet 1 of window "Keyboard" of application process "System Preferences" of application "System Events"
		click button "OK" of sheet 1 of window "Keyboard" of application process "System Preferences" of application "System Events"

		click menu item "Close" of menu "Window" of menu bar item "Window" of menu bar 1 of application process "System Preferences" of application "System Events"
	end tell
end tell
```

default

```
tell application "System Preferences"
	activate
end tell

tell application "System Events"
	tell process "System Preferences"
		delay 1
		click menu item "Keyboard" of menu "View" of menu bar 1
		--entire contents
		delay 1
		click button "Modifier Keys…" of tab group 1 of window "Keyboard" of application process "System Preferences" of application "System Events"
		-- option to option
		click pop up button "Option (⌥) Key:" of sheet 1 of window "Keyboard" of application process "System Preferences" of application "System Events"
		click menu item "⌥ Option" of menu 1 of pop up button "Option (⌥) Key:" of sheet 1 of window "Keyboard" of application process "System Preferences" of application "System Events"
		-- cmd to cmd
		click pop up button "Command (⌘) Key:" of sheet 1 of window "Keyboard" of application process "System Preferences" of application "System Events"
		click menu item "⌘ Command" of menu 1 of pop up button "Command (⌘) Key:" of sheet 1 of window "Keyboard" of application process "System Preferences" of application "System Events"
		click button "OK" of sheet 1 of window "Keyboard" of application process "System Preferences" of application "System Events"
		
		click menu item "Close" of menu "Window" of menu bar item "Window" of menu bar 1 of application process "System Preferences" of application "System Events"
	end tell
end tell
```
