evaluation
evaluateExpression: aStringArray

	aStringArray size = 1 ifTrue: [
		^self evaluateElement: aStringArray first].
	
	aStringArray size >= 3 ifTrue: [ | arg1 arg2 op |
		arg1 := self evaluateExpression: (aStringArray allButLast: 2).
		arg2 := self evaluateElement: aStringArray last.
		op := (aStringArray at: aStringArray size -1) asSymbol.
		^ arg1 perform: op with: arg2].
	
	Transcript showln: 'Error: cant evaluate Expression'.
	self end: true.
	^1 
	