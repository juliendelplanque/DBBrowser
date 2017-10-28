initialization
initialize
	state := DBBState new.
	commandsManager := DBBCommandsManager new
								browser: self;
								yourself.
								
	super initialize.
	self title: self defaultTitle.