on roomChange(roomName)

  -- blog post about this here:
  --   https://currentkey.com/2020/05/11/advanced-tutorial-running-a-python-script-on-room-changes/

	-- this is going to call a python script (i named "yoyo.py") in my root directory
	-- and pass the roomName string along as a command line argument
	
	
	if application "Terminal" is running then
		tell application "Terminal"
			# terminal is running, so we likely don't need to spawn a new window
			
			do script "python ~/yoyo.py " & roomName in window 1
		end tell
	else
		tell application "Terminal"
			# open terminal and run this script in a new window
			do script "python ~/yoyo.py " & roomName
		end tell
	end if
	
	-- you can grab CurrentKey Stats at: https://apps.apple.com/app/apple-store/id1456226992?pt=119982183&ct=spencerdailey&mt=8
	
end roomChange

