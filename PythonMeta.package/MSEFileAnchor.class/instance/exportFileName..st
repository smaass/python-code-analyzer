exporting
exportFileName: aStream
	self exportProperty: [ :stream |
		stream
			nextPutAll: 'fileName ''';
			nextPutAll: self filename;
			nextPutAll: ''''
	] on: aStream