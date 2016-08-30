exporting
exportIsStub: aStream
	self exportProperty: [ :stream |
		stream nextPutAll: 'isStub true'
	] on: aStream.
