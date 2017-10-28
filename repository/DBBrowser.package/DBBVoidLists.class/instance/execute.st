executing
execute
	self browser databasesList ifNotNil: [
		self browser
			databasesListItems: #() ].
	
	self browser databaseItemGroupsList ifNotNil: [
		self browser
			databaseItemsGroupsListItems: #() ].
	
	self browser databaseItemsList ifNotNil: [
		self browser
			databaseItemsListItems: #() ]