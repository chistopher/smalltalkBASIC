editProgram
readLine: aBasicLine
	
	self program 
		at: (aBasicLine subStrings: ' ') first asInteger
		put: (aBasicLine subStrings: ' ').