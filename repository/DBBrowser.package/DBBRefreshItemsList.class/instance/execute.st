executing
execute
	(self browser hasDatabaseSelected and: [ self browser hasDatabaseItemsGroupSelected ])
		ifFalse: [ ^ self ].
	
	self browser databaseItemsListItems: (self modelAdapter itemsListForGroup: self browser databaseItemsGroupSelected database: self browser databaseSelected)