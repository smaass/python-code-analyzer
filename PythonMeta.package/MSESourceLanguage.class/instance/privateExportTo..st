exporting
privateExportTo: aStream
	self exportProperty: [ :stream |
		stream
			nextPutAll: 'name ''', (self language), ''''
	] on: aStream