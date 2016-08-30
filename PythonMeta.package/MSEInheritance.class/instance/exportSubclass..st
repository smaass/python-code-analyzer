exporting
exportSubclass: aStream
	|subclassNode|
	
	subclassNode := exporter classes at: self subclassModel.
	
	self exportProperty: [ :stream |
		stream
			nextPutAll: 'subclass (ref: ';
			nextPutAll: subclassNode id asString;
			nextPutAll: ')'
	] on: aStream.