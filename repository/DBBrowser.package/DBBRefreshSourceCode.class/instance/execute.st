executing
execute
	self browser hasDatabaseItemSelected
		ifFalse: [ ^ self ].
		
	(self modelAdapter itemOldsCode: self browser databaseItemSelected)	
		ifFalse: [ self browser codeEditor code: ''. ^ self ].
		
	self browser codeEditor
		code: (self modelAdapter itemCode: self browser databaseItemSelected)