evalKeys
evalFOR: aStringArray
"FOR X = 2 TO 10 STEP 2"

	| max step bodyAddress |
	
	(aStringArray second = '=' and: [aStringArray fourth = 'TO']) ifFalse: [
		Transcript showln: 'Error: FOR: wrong syntax'.
		^self end: true].
	
	self variables 
		at: aStringArray first
		put: (self evaluateElement: aStringArray third).
		
	step := 1.
	max := self evaluateElement: aStringArray fifth.
	bodyAddress := self nextAddress.
	
	aStringArray size = 7 ifTrue: [
		step := aStringArray seventh asInteger].	
		
	self loops 
		at: aStringArray first
		put: {max. step. bodyAddress}