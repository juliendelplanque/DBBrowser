specs
defaultSpec
	^ SpecLayout composed
			newColumn: [ :column | 
				column
					newRow: [ :row |
						row
							add: #label ] height: self buttonHeight;
					add: #list ];
		yourself