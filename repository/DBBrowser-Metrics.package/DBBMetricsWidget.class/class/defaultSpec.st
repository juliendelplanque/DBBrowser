specs
defaultSpec
	^ SpecLayout composed
			newColumn: [ :column | 
				column
					newRow: [ :row |
						row
							add: #exportButton ] height: self buttonHeight;
					add: #metricsList ];
		yourself