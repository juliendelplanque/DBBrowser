executing
execute
	| groups data |
	self browser hasDatabaseSelected
		ifFalse: [ self error: 'Please select a database first.' ].
	groups := self modelAdapter itemGroupsListForDatabase: self browser databaseSelected.
	data := groups collect: [ :group |
		{ 
			self modelAdapter nameForGroup: group .
			(self modelAdapter itemsListForGroup: group database: self browser databaseSelected) size
		} ].
	DBBMetricsWidget new
		header: #('Group name' 'Entities count');
		metricsListItems: data;
		openWithSpec