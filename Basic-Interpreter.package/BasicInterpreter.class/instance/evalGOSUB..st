evalKeys
evalGOSUB: aStringArray
"GOSUB 200"

	| address |
	
	address := aStringArray first asInteger.
	(self program at: address) ifNil: [
		Transcript showln: 'Error: GOSUB: address ', aStringArray first, ' not found in program'.
		^self end: true].
	
	self returnAddress: self nextAddress.
	self nextAddress: address.