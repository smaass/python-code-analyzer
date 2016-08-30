visitor
visitMethodModel: aPyMethodModel
	| exportMethodNode |
	
	exportMethodNode := MSEMethod new
		pyModel: aPyMethodModel
		withId: currentId.
	
	exportMethodNode parentType: (self getMSEClass: aPyMethodModel parentClass).
	methods at: aPyMethodModel put: exportMethodNode.
	self incrementId.
	self addSourceAnchorFor: exportMethodNode.