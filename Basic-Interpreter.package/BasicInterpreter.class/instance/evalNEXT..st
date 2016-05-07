evalKeys
evalNEXT: aStringArray
"NEXT X"
	
	| index |
	
	index := aStringArray first.
	(self loops includesKey: index) ifFalse: [
		Transcript showln: 'Error: NEXT: no loop for ', index, ' found in program'.
		^self end: true].
	
	"increment by step"
	self variables 
		at: index
		put: ((self variables at: index) + (self loops at: index) second).
		
	((self variables at: index) <= ((self loops at: index) first)) 
		ifTrue: [self nextAddress: (self loops at: index) third]
	