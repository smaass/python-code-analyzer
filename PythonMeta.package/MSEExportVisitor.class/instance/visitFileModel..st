visitor
visitFileModel: aPyFileModel
	|namespaceNode|
		
	namespaceNode := MSENamespace new
		pyModel: aPyFileModel
		withId: currentId.
				
	files at: aPyFileModel put: namespaceNode.
	self incrementId.
	self addSourceAnchorFor: namespaceNode.