editProgram
show

	Transcript showln: '***************START***************'.
	self program do: [ :each |
		each ifNotNil: [
			Transcript showln: (each joinSeparatedBy: ' ')]].
	Transcript showln: '****************END****************'