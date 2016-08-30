exporting
exportParentType: aStream
	self exportProperty: [ :stream |
		stream
			nextPutAll: 'parentType (ref: ';
			nextPutAll: parentType id asString;
			nextPut: $)
	] on: aStream.