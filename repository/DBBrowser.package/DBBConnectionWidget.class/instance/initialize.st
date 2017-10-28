initialization
initialize
	super initialize.
	self
		title: 'PgMetadata connection form';
		hostnameTextInputRegex: '.+';
		portTextInputRegex: '\d\d\d\d';
		databaseTextInputRegex: '.+';
		userTextInputRegex: '.+';
		passwordTextInputRegex: '.+'