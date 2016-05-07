evalKeys
evalLET: aStringArray
"LET X = 3 + Y * 5"

	aStringArray second = '=' ifFalse: [
		Transcript showln: 'Error: LET: needs = after variable name'.
		^self end: true].
	
	self variables 
		at: aStringArray first
		put: (self evaluateExpression: (aStringArray allButFirst: 2))