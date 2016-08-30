public-exporting
exportTo: aStream
	aStream
		nextPut: Character tab;
		nextPutAll: '(FAMIX.';
		nextPutAll: self famixNodeType;
		nextPutAll: ' (id: ';
		nextPutAll: (id asString);
		nextPut: $);
		nextPut: Character cr.
	
	self privateExportTo: aStream.
	self isStub ifTrue: [ self exportIsStub: aStream ].
	self sourceAnchor ifNotNil: [ self exportSourceAnchor: aStream ].
	
	aStream
		nextPut: Character tab;
		nextPut: $);
		nextPut: Character cr.