validation
checkInputsMatchRegexes
	(self hostnameTextInput text matchesRegex: self hostnameTextInputRegex)
		ifFalse: [ DBBError signal: 'Input for hostname is malformed.' ].

	(self portTextInput text matchesRegex: self portTextInputRegex)
		ifFalse: [ DBBError signal: 'Input for port number is malformed.' ].
		
	(self databaseTextInput text matchesRegex: self databaseTextInputRegex)
		ifFalse: [ DBBError signal: 'Input for database name is malformed.' ].
		
	(self userTextInput text matchesRegex: self userTextInputRegex)
		ifFalse: [ DBBError signal: 'Input for user name is malformed.' ].
		
	(self passwordTextInput text matchesRegex: self passwordTextInputRegex)
		ifFalse: [ DBBError signal: 'Input for password is malformed.' ]