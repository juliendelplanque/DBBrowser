executing
execute: aCommandClass
	aCommandClass
		executeOnNotification: [ :notification | self actionOnDBBNotification: notification ]
		onError: [ :error | self actionOnDBBError: error ]