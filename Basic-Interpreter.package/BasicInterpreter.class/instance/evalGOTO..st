evalKeys
evalGOTO: aStringArray
"GOTO 378"

	| address |
	
	address := aStringArray first asInteger.
	(self program at: address) ifNil: [
		Transcript showln: 'Error: GOTO: address ', aStringArray first, ' not found in program'.
		^self end: true].
	
	self nextAddress: address.