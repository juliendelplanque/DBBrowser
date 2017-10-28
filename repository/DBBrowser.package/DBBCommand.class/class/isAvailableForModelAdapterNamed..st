testing
isAvailableForModelAdapterNamed: aString
	aString = DBBNullModelAdapter name
		ifTrue: [ ^ self isAvailableForNullModelAdapter ].
	
	^ self isAvailableForAnyModelAdapter or: [ self modelAdaptersSupported includes: aString ]