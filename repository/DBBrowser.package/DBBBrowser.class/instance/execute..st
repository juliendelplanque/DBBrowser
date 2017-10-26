executing
execute: aCommandClass
	aCommandClass executeOn: self onNotification: [ :notification | UIManager default inform: notification messageText. notification resume ] onError: [ :error | UIManager default alert: error messageText ]