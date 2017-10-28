accessing
modelAdapter: anObject
	modelAdapter := anObject.
	
	self execute: DBBVoidLists.
	self toolbar ifNotNil: [ self rebuildToolbar ]