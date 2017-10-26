initialization
initializeToolbar
	toolbar := MenuModel new
		addGroup: [ :group | 
			DBBCommand allToolbarCommands do: [ :class | 
				group
					addItem: [ :item | 
						item
							description: class commandDescription;
							action: [ self execute: class ].
						class hasIcon
							ifTrue: [ item icon: class icon ]
							ifFalse: [ item name: class commandName ] ] ] ]