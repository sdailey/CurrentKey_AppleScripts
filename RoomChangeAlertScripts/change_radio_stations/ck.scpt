on roomChange(roomName)

	-- any lines with a double-dashes ( -- ) are comments, not code
	-- these Room names have been assigned to my Mac's Spaces in CurrentKey Stats
	
	tell application "Broadcasts"
		
		if (roomName = "Spanish") then
			
			-- code here is run when ...
			-- I switch to the Space with a Room named "Spanish" assigned to it
		
			-- I have a station named this in Broadcasts 
			play "Chanquete FM Málaga"
			
		else if (roomName = "Sports") then
			
			-- I have a station named this in Broadcasts 
			play "104.9 The Horn Austin Sports Talk"
			
		else if (roomName = "Coding") then
			
			-- I have a station named this in Broadcasts 
			play "Monstercat"
			
		else
			
			-- when I switch into any other Space, it's going to Pause playback
			
			if playing then
				playpause
			end if
			
		end if
		
	end tell
	
	tell application "System Events"
    tell appearance preferences
			
			-- I want Dark Mode when I'm programming
			if (roomName = "Coding") then
					
				if (dark mode = false) then
					set dark mode to not dark mode
				end if
				
			else
			-- I want to disable Dark Mode when I'm not programming
				if (dark mode) then
					set dark mode to not dark mode
				end if
				
			end if	
		end tell
	end tell
	
	-- you can grab Broadcasts at: https://apps.apple.com/us/app/broadcasts/id1469995354
	
	-- you can grab CurrentKey Stats at: https://apps.apple.com/app/apple-store/id1456226992?pt=119982183&ct=spencerdailey&mt=8
	
end roomChange