evalKeys
evalIF: aStringArray
"IF X < 10 THEN 200"	

	| arg1 arg2 comp |
	aStringArray fourth = 'THEN' ifFalse: [
		Transcript showln: 'Error: IF: wrong syntax'.
		^self end: true].
	 
	arg1 := self evaluateElement: aStringArray first.
	arg2 := self evaluateElement: aStringArray third.
	comp := aStringArray second asSymbol.
	
	(arg1 perform: comp with: arg2) ifTrue: [
		self nextAddress: aStringArray fifth asInteger].