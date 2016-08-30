exporting
exportEndLine: aStream
	self exportProperty: [ :stream |
		stream
			nextPutAll: 'endLine ';
			nextPutAll: self endLine asString
	] on: aStream