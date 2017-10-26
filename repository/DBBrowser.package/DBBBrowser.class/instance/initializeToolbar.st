initialization
initializeToolbar
	toolbar := MenuModel new
		addGroup: [ :group | 
			DBBCommand allToolbarCommands do: [ :class | 
				group
					addItem: [ :item | 
						item
							description: class commandDescription;
							action: [ class executeOn: self ].
						class hasIcon
							ifTrue: [ item icon: class icon ]
							ifFalse: [ item name: class commandName ] ] ] ]