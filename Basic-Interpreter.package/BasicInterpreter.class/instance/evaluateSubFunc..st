evaluation
evaluateSubFunc: aString 
	
	| func param temp | 

	temp := aString subStrings: '('.
	func := ('sub', temp first asSymbol, ':') asSymbol.
	param := self evaluateElement: temp last allButLast.
	^ self perform: func with: param
