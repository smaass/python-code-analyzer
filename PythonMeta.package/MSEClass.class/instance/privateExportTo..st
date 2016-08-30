exporting
privateExportTo: aStream
	self exportName: aStream.
	self isStub ifFalse: [self exportContainer: aStream].