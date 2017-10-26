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
						class hasToolbarIcon
							ifTrue: [ item icon: class toolbarIcon ]
							ifFalse: [ item name: class commandName ] ] ] ]