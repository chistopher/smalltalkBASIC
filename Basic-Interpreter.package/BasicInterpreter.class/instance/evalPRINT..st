evalKeys
evalPRINT: aStringArray
"PRINT X + 5"
	
	| argument | 
		
	argument := self evaluateExpression: aStringArray.
	Transcript showln: argument asString