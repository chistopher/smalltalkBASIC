evaluation
run

	| current | 
	
	Transcript showln: '<<program started>>'.

	current := (self program copyWithout: nil) first.
	[self end] whileFalse: [
		self nextAddress: (self program indexOf: ((self program copyWithout: nil) after: current 
			ifAbsent: [nil])).
		self evaluateCommand: current allButFirst.
		current := (self program at: self nextAddress).
		current ifNil: [
			self end: true]]. 
	
	Transcript showln: '<<program terminated>>'