initialization
initializePresenter
	hostnameLabel
		label: 'Hostname:'.
	hostnameTextInput
		autoAccept: true.
	
	portLabel
		label: 'Port:'.
	portTextInput 
		autoAccept: true.
	
	databaseLabel
		label: 'Database:'.
	databaseTextInput
		autoAccept: true.
	
	userLabel
		label: 'User:'.
	userTextInput
		autoAccept: true.
	
	passwordLabel
		label: 'Password:'.
	passwordTextInput
		beEncrypted
		autoAccept: true.
		
	okButton
		label: 'Ok'.
		
	cancelButton
		label: 'Cancel';
		action: [ self window close ]