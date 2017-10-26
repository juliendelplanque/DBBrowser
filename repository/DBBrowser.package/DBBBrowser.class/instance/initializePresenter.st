initialization
initializePresenter
	super initializePresenter.
	self databasesList
		label: 'Databases';
		classMessageForMenu: #allDatabaseMenuCommands;
		beSingleSelection;
		buttonAction: [ DBBRefreshDatabasesList executeOn: self ];
		whenSelectedItemChanged: [ DBBRefreshItemGroupsList executeOn: self ];
		displayBlock: [ :database | self modelAdapter nameForDatabase: database ].
	self databaseItemGroupsList
		label: 'Item groups';
		classMessageForMenu: #allItemsGroupMenuCommands;
		beSingleSelection;
		buttonAction: [ DBBRefreshItemGroupsList executeOn: self ];
		whenSelectedItemChanged: [ DBBRefreshItemsList executeOn: self ];
		displayBlock: [ :group | self modelAdapter nameForGroup: group ].
	self databaseItemsList
		label: 'Items';
		classMessageForMenu: #allDatabaseMenuCommands;
		beSingleSelection;
		buttonAction: [ DBBRefreshItemsList executeOn: self ];
		displayBlock: [ :item | self modelAdapter nameForItem: item ]