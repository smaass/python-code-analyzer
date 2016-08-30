exporting
exportNumberOfLinesOfCode: aStream
	self exportProperty: [ :stream |
		stream
			nextPutAll: 'numberOfLinesOfCode ';
			nextPutAll: pyModel linesOfCode asString
	] on: aStream.
	