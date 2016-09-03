exporting
exportNumberOfParameters: aStream
	self exportProperty: [ :stream |
		stream
			nextPutAll: 'numberOfParameters ';
			nextPutAll: pyModel parameters size asString
	] on: aStream.