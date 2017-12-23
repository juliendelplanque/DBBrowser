file name generation
generateFileNameIn: directory
	| fileName baseFileName index |
	baseFileName := DateAndTime now asFileNameCompatibleString.
	index := 0.
	fileName := baseFileName , '.csv'.
	[ (directory / fileName) exists ] whileTrue: [ 
		index := index + 1.
		fileName := baseFileName , '-' , index asString , '.csv' ].
	^ fileName