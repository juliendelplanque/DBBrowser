initialization
initializeToolbar
	toolbar := MenuModel new
		addGroup: [ :group | 
			DBBCommand allUsableToolbarCommands do: [ :class | 
				group
					addItem: [ :item | 
						item
							description: class commandDescription;
							action: [ class new executeOn: self ].
						class hasToolbarIcon
							ifTrue: [ item icon: class toolbarIcon ]
							ifFalse: [ item name: class commandName ] ] ] ]