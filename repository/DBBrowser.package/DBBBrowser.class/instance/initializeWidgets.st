initialization
initializeWidgets
	databasesList := DBBRefreshableBrowserList forBrowser: self.
	databaseItemGroupsList := DBBBrowserList forBrowser: self.
	databaseItemsList := DBBBrowserList forBrowser: self.
	self initializeToolbar.