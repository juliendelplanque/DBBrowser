accessing
allUsableToolbarCommands
	^ DBBToolbarCommand allSubclasses reject: #isAbstract