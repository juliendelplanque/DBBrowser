executing
executeOn: aDBBBrowser
	aDBBBrowser hasDatabaseItemSelected
		ifFalse: [ ^ self ].
		
	(aDBBBrowser modelAdapter itemOldsCode: aDBBBrowser databaseItemSelected)	
		ifFalse: [ aDBBBrowser codeEditor code: ''. ^ self ].
		
	aDBBBrowser codeEditor
		code: (aDBBBrowser modelAdapter itemCode: aDBBBrowser databaseItemSelected)