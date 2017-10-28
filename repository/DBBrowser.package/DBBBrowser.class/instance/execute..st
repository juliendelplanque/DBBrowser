executing
execute: aCommandClass
	aCommandClass
		executeOn: self
		onNotification: [ :notification | self actionOnDBBNotification: notification ]
		onError: [ :error | self actionOnDBBError: error ]