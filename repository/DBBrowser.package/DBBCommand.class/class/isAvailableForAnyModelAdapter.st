testing
isAvailableForAnyModelAdapter
	"A command's class should answer true to this message if it supports any model adapter
	(answering true to this message does not make the command support the null model adapter,
	to support the null model adapter, see #isAvailableForNullModelAdapter)."
	^ false