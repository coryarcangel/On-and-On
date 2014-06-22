repeat
	
	set myhour to get the (hours of (current date))
	
	-- play between 9pm and 5am every day
	
	delay 1
	
	-- delay so we dont burn up the processor
	
	if myhour >= 21 or myhour < 5 then
	
		tell application "Spotify"
			
			activate
			
			set repeating to true
			
			-- "Like a G6" by Far East Movement.~\footnotemark[1]~	
			
			play track "spotify:track:4DvhkX2ic4zWkQeWMwQ2qf" in context "spotify:album:1TuKgkCGIxiIns9Bc5XKRC"
			
			set x to 214
			
			-- Almost the duration of Like A G6. We don't wanna get to the ~end~ cause Spotify might throw a "commercial" which throws Applescript into a tailspin. This could be overcome with some tricky code, aka nested "trys", but I found a hack which is to just ~quit~ Spotify and restart, as Spotify doesn't seem to throw commercials the first thing out of the gate. It's a bit unglamorous, though makes for a pretty small script. :/
			
			delay x
			
			quit
		
		end tell
		
	end if
	
end repeat
