validation
checkInputsMatchRegexes
	(self portTextInput text matchesRegex: self portTextInputRegex)
		ifFalse: [ DBBError signal: 'Input for port number is malformed.' ]