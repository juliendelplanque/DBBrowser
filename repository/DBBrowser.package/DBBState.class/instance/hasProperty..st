testing
hasProperty: aSymbol
	self propertyAt: aSymbol ifAbsent: [ ^ false ].
	
	^ true