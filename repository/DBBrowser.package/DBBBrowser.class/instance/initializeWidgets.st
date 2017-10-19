initialization
initializeWidgets
	databasesList := DBBBrowserList new.
	databaseItemGroupsList := DBBBrowserList new.
	databaseItemsList := DBBBrowserList new.
	codeEditor := DBBCodeEditor new.
	self initializeToolbar.