public api
okButtonAction: aBlock
	okButton action: [ 
		[ 
			self checkInputsMatchRegexes.
			aBlock value: self
		] on: DBBError do: [ :error | UIManager default alert: error messageText ] ]