on roomChange(roomName)

	-- any lines with a double-dash are comments, not code
	
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
			
		else
			
			-- when I switch into any other Space, it's going to Pause playback
			
			if playing then
				playpause
			end if
			
		end if
		
	end tell
	
	-- you can grab Broadcasts at: https://apps.apple.com/us/app/broadcasts/id1469995354
	
	-- you can grab CurrentKey Stats at: https://apps.apple.com/app/apple-store/id1456226992?pt=119982183&ct=spencerdailey&mt=8
	
end roomChange