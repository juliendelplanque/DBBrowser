executing
execute
	self browser hasDatabaseSelected
		ifFalse: [ ^ self ].
	
	self browser databaseItemsGroupsListItems: (self modelAdapter itemGroupsListForDatabase: self browser databaseSelected)