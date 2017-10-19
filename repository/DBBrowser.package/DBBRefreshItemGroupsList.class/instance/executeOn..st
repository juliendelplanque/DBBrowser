executing
executeOn: aDBBBrowser
	aDBBBrowser hasDatabaseSelected
		ifFalse: [ ^ self ].
	
	aDBBBrowser databaseItemsGroupsListItems: (aDBBBrowser modelAdapter itemGroupsListForDatabase: aDBBBrowser databaseSelected)