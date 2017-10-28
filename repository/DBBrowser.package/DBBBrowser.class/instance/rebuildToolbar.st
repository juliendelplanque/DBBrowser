private - rebuilding
rebuildToolbar
	self
		initializeToolbar;
		needRebuild: false.
	
	self databasesList
		needRebuild: false.
		
	self databaseItemGroupsList
		needRebuild: false.
		
	self databaseItemsList
		needRebuild: false.
		
	self buildWithSpec