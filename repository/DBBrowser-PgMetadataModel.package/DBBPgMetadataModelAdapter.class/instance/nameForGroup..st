public api
nameForGroup: aGroup
	^ (aGroup name copyFrom: 4 to: aGroup name size) , 's'