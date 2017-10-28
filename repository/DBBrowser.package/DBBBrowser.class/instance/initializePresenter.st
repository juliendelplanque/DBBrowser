initialization
initializePresenter
	super initializePresenter.
	self databasesList
		label: 'Databases';
		classMessageForMenu: #allDatabaseMenuCommands;
		beSingleSelection;
		buttonAction: [ self execute: DBBRefreshDatabasesList ];
		whenSelectedItemChanged: [ 
			DBBCommand allDatabaseSelectedCommands do: [ :class | self execute: class ] ];
		displayBlock: [ :database | self modelAdapter nameForDatabase: database ].
	self databaseItemGroupsList
		label: 'Item groups';
		classMessageForMenu: #allItemsGroupMenuCommands;
		beSingleSelection;
		whenSelectedItemChanged: [ 
			DBBCommand allItemsGroupSelectedCommands do: [ :class | self execute: class ] ];
		displayBlock: [ :group | self modelAdapter nameForGroup: group ].
	self databaseItemsList
		label: 'Items';
		classMessageForMenu: #allItemMenuCommands;
		beSingleSelection;
		whenSelectedItemChanged: [ 
			DBBCommand allItemSelectedCommands do: [ :class | self execute: class ] ];
		displayBlock: [ :item | self modelAdapter nameForItem: item ]