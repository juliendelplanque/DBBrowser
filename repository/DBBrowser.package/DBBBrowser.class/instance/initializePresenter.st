initialization
initializePresenter
	super initializePresenter.
	self databasesList
		label: 'Databases';
		abstractCommandClassForMenu: DBBDatabaseCommand;
		beSingleSelection;
		buttonAction: [ DBBRefreshDatabasesList executeOn: self ];
		whenSelectedItemChanged: [ DBBRefreshItemGroupsList executeOn: self ];
		displayBlock: [ :database | self modelAdapter nameForDatabase: database ].
	self databaseItemGroupsList
		label: 'Item groups';
		abstractCommandClassForMenu: DBBItemGroupCommand;
		beSingleSelection;
		buttonAction: [ DBBRefreshItemGroupsList executeOn: self ];
		whenSelectedItemChanged: [ DBBRefreshItemsList executeOn: self ];
		displayBlock: [ :group | self modelAdapter nameForGroup: group ].
	self databaseItemsList
		label: 'Items';
		abstractCommandClassForMenu: DBBItemCommand;
		beSingleSelection;
		buttonAction: [ DBBRefreshItemsList executeOn: self ];
		displayBlock: [ :item | self modelAdapter nameForItem: item ]