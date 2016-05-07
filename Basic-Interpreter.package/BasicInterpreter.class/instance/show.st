editProgram
show

	Transcript showln: '***************START***************'.
	self program doWithIndex: [ :each :index |
		each ifNotNil: [
			Transcript showln: (index asString, ' ', (each joinSeparatedBy: ' '))]].
	Transcript showln: '****************END****************'