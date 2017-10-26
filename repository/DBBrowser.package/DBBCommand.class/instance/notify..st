error handling
notify: aString
	DBBCommandNotification new
		command: self;
		signal: aString