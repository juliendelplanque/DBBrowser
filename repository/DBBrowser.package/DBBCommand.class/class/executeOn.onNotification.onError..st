executing
executeOn: aDBBBrowser onNotification: notificationBlock onError: errorBlock
	^ self new
		browser: aDBBBrowser;
		executeOnNotification: notificationBlock onError: errorBlock