commands management
allCommandsAvailableForModelAdapter
	^ self allConcreteCommands select: [ :command |
		command isAvailableForModelAdapterNamed: self browser modelAdapter name ]