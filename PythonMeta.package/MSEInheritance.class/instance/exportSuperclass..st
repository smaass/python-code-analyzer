exporting
exportSuperclass: aStream
	|superclassNode|
	
	superclassNode := exporter classes at: self superclassModel.

	self exportProperty: [ :stream |
		stream
			nextPutAll: 'superclass (ref: ';
			nextPutAll: superclassNode id asString;
			nextPutAll: ')'
	] on: aStream.