initialization
initializeWidgets
	databasesList := DBBBrowserList forBrowser: self.
	databaseItemGroupsList := DBBBrowserList forBrowser: self.
	databaseItemsList := DBBBrowserList forBrowser: self.
	codeEditor := DBBCodeEditor new.
	self initializeToolbar.