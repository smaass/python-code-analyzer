visitor
visitAttributeModel: aPyAttributeModel
	| exportAttributeNode |
	
	exportAttributeNode := MSEAttribute new
		pyModel: aPyAttributeModel
		withId: currentId.
	
	exportAttributeNode parentType: (self getMSEClass: aPyAttributeModel parentClass).
	attributes at: aPyAttributeModel put: exportAttributeNode.
	self incrementId.