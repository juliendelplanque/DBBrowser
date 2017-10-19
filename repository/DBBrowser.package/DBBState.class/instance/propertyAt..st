accessing
propertyAt: aSymbol
	^ self propertyAt: aSymbol ifAbsent: [ nil ]