executing
execute
	| directory |
	directory := UIManager default chooseDirectory.
	directory 
		ifNotNil: [ |fileName|
			fileName := self generateFileNameIn: directory.
			(directory / fileName) writeStreamDo: [ :stream |
				self header do: [ :headerItem |
					stream
						<< $"
						<< headerItem;
						<< $" ] separatedBy: [ stream << $, ].
				stream newLine.
				self data do: [ :dataItem |
					dataItem do: [ :dataRowItem |
						stream
						<< $"
						<< dataRowItem;
						<< $" ] separatedBy: [ stream << $, ] ] separatedBy: [ stream newLine ] ] ]