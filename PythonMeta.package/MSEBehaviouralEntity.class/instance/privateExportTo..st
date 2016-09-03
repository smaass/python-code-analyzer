exporting
privateExportTo: aStream
	self exportName: aStream.
	self exportNumberOfLinesOfCode: aStream.
	self exportNumberOfParameters: aStream.