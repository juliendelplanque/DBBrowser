specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :mainColumn | 
			mainColumn
				newRow: #toolbar height: self toolbarHeight;
				newColumn: [ :col | 
					col
						newRow: [ :mainRow | 
							mainRow
								add: #databasesList;
								addSplitter;
								add: #databaseItemGroupsList;
								addSplitter;
								add: #databaseItemsList ];
								addSplitter;
								newRow: #codeEditor ] ];
		yourself