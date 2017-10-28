accessing
modelAdapter: anObject
	modelAdapter := anObject.
	
	self toolbar ifNotNil: [ self rebuildToolbar ]