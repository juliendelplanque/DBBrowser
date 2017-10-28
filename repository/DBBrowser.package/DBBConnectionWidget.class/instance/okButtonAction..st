public api
okButtonAction: aBlock
	okButton action: [ 
		[ 
			self checkInputsMatchRegexes.
			aBlock value: self
		] on: DBBError do: [ :error | self actionOnDBBError: error ] ]