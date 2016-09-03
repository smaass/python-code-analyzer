exporting
privateExportTo: aStream
	super privateExportTo: aStream.
	self exportParentType: aStream.