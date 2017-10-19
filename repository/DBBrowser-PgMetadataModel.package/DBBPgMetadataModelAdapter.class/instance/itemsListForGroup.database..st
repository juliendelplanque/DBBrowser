public api
itemsListForGroup: aGroup database: aDatabase
	^ aDatabase objects select: [ :object | object class = aGroup ]