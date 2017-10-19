initialization
initializePresenter
	super initializePresenter.
	self databasesList
		label: 'Databases';
		beSingleSelection;
		buttonAction: [ DBBRefreshDatabasesList executeOn: self ];
		whenSelectedItemChanged: [ DBBRefreshItemGroupsList executeOn: self ];
		displayBlock: [ :database | self modelAdapter nameForDatabase: database ].
	self databaseItemGroupsList
		label: 'Item groups';
		beSingleSelection;
		buttonAction: [ DBBRefreshItemGroupsList executeOn: self ];
		whenSelectedItemChanged: [ DBBRefreshItemsList executeOn: self ];
		displayBlock: [ :group | self modelAdapter nameForGroup: group ].
	self databaseItemsList
		label: 'Items';
		beSingleSelection;
		buttonAction: [ DBBRefreshItemsList executeOn: self ];
		whenSelectedItemChanged: [ DBBRefreshSourceCode executeOn: self ];
		displayBlock: [ :item | self modelAdapter nameForItem: item ]