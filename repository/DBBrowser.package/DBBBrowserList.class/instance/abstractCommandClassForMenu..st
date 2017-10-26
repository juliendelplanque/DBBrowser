accessing
abstractCommandClassForMenu: anObject
	abstractCommandClassForMenu := anObject.
	
	abstractCommandClassForMenu ifNotNil: [ 
		list menu: [ :menu |
			abstractCommandClassForMenu allUsableCommands
				do: [ :commandClass |
					menu
						add: commandClass commandName
						target: commandClass
						selector: #executeOn:
						argument: self browser ].
					menu ] ]