specs
defaultSpec
	^ SpecLayout composed
			newColumn: [ :column | 
				column
					newRow: #text ];
		yourself