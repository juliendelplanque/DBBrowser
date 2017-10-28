executing
execute
	self modelAdapter
		ifNil: [ self error: 'No database model loaded.' ].
	self browser databasesListItems: self modelAdapter databaseList