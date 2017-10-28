initialization
initialize
	state := DBBState new.
	commandsManager := DBBCommandsManager new
								browser: self;
								yourself.
	self modelAdapter: DBBNullModelAdapter new.
	super initialize.
	self
		title: self defaultTitle