executing
execute
	| groups data |
	self browser hasDatabaseSelected
		ifFalse: [ UIManager default inform: 'Please select a database first.'. ^ self ].
	groups := self modelAdapter itemGroupsListForDatabase: self browser databaseSelected.
	data := groups collect: [ :group |
		{ 
			self modelAdapter nameForGroup: group .
			(self modelAdapter itemsListForGroup: group database: self browser databaseSelected) size
		} ].
	data := { {'Group name' . 'Entities count'} } , data.
	MultiColumnListModel new
		title: 'Groups Metrics';
		items: data;
		displayBlock: [ :item | item collect: #asString ];
		openWithSpec