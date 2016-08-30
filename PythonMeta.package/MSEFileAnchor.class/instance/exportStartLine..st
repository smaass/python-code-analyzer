exporting
exportStartLine: aStream
	self exportProperty: [ :stream |
		stream
			nextPutAll: 'startLine ';
			nextPutAll: self startLine asString
	] on: aStream