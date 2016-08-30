exporting
privateExportTo: aStream

	self exportFileName: aStream.
	startLine ifNotNil: [ self exportStartLine: aStream ].
	endLine ifNotNil: [ self exportEndLine: aStream ]