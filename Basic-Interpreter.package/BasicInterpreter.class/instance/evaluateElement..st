evaluation
evaluateElement: aString 
"returns a number the value of a variable or the string"
	
	(aString endsWith: ')') ifTrue: [
		^ self evaluateSubFunc: aString].
	
	^ aString first isDigit
		ifTrue: [aString asNumber]
		ifFalse: [
			self variables at: aString 
			 	ifAbsent: [aString]]