exporting
privateExportTo: aStream
	self exportSubclass: aStream.
	self exportSuperclass: aStream.