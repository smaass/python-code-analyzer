export
exportAs: filename
	| stream |
	stream := FileStream newFileNamed: filename.
	self exportTo: stream