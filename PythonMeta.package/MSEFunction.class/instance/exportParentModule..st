exporting
exportParentModule: aStream
	self exportProperty: [ :stream |
		stream
			nextPutAll: 'parentModule (ref: ';
			nextPutAll: self module id asString;
			nextPutAll: ')' 
	] on: aStream