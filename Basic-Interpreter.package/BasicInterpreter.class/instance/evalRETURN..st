evalKeys
evalRETURN: aStringArray
"RETURN"

	self returnAddress ifNil: [
		Transcript showln: 'Error: RETURN: no return address found'.
		^self end: true].
	
	self nextAddress: self returnAddress.