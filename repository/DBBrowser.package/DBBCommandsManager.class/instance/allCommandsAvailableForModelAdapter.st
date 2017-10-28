commands management
allCommandsAvailableForModelAdapter
	"^ self allConcreteCommands select: [ :command |
		command isAvailableForModelAdapterNamed: self browser modelAdapter name ]"
	self flag: 'The code inside comment should replace the following when commands are able to decide if they work with a specific model adapter.'.
	^ self allConcreteCommands