executing
executeOnNotification: notificationBlock onError: errorBlock
	[
		[
			self execute
		] on: DBBCommandNotification do: [ :notification | notificationBlock value: notification ]
	] on: DBBCommandError do: [ :error | errorBlock value: error ]