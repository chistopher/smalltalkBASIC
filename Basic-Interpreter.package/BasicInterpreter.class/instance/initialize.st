initialize
initialize 

	super initialize.
	"max line number is 1024"
	self program: (Array new: 1024);
		variables: Dictionary new;
		loops: Dictionary new;
		end: false.