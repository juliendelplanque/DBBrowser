accessing
classMessageForMenu: anObject
	classMessageForMenu := anObject.
	
	classMessageForMenu ifNotNil: [ 
		list menu: [ :menu |
			(classMessageForMenu value: self browser commandsManager)
				do: [ :commandClass |
					menu
						add: commandClass commandName
						target: self browser
						selector: #execute:
						argument: commandClass ].
					menu ] ]