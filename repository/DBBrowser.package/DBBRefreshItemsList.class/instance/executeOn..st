executing
executeOn: aDBBBrowser
	(aDBBBrowser hasDatabaseSelected and: [ aDBBBrowser hasDatabaseItemsGroupSelected ])
		ifFalse: [ ^ self ].
	
	aDBBBrowser databaseItemsListItems: (aDBBBrowser modelAdapter itemsListForGroup: aDBBBrowser databaseItemsGroupSelected database: aDBBBrowser databaseSelected)