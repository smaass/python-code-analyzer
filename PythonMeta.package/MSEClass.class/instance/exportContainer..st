exporting
exportContainer: aStream
	self exportProperty: [ :stream |
		stream
			nextPutAll: 'container (ref: ';
			nextPutAll: self container id asString;
			nextPutAll: ')' 
	] on: aStream