exporting
exportSourceAnchor: aStream
	self exportProperty: [ :stream |
		stream
			nextPutAll: 'sourceAnchor (ref: ';
			nextPutAll: self sourceAnchor id asString;
			nextPutAll: ')'
	] on: aStream.
