public api
itemGroupsListForDatabase: aDatabase
	^ (aDatabase objects collect: #class) asSet sorted: [ :a :b | a name < b name ]