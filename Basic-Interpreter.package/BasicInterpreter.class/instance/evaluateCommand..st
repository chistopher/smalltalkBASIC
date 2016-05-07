evaluation
evaluateCommand: aStringArray

	self perform: ('eval' , aStringArray first, ':') asSymbol
		with: aStringArray allButFirst