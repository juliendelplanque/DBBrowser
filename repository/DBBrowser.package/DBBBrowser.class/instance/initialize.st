initialization
initialize
	super initialize.
	self title: self defaultTitle.
	
	state := DBBState new