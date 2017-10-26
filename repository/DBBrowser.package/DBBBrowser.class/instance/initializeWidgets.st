initialization
initializeWidgets
	databasesList := DBBBrowserList forBrowser: self.
	databaseItemGroupsList := DBBBrowserList forBrowser: self.
	databaseItemsList := DBBBrowserList forBrowser: self.
	self initializeToolbar.