specs
defaultSpec
	^ SpecLayout composed
			newColumn: [ :column | 
				column
					newRow: [ :row |
						row
							add: #label;
							newColumn: #refreshButton width: self buttonHeight ] height: self buttonHeight;
					add: #list ];
		yourself