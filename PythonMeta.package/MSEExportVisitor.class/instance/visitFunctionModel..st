visitor
visitFunctionModel: aPyFunctionModel
	| functionNode |
	
	functionNode := MSEFunction new
		pyModel: aPyFunctionModel
		withId: currentId.
		
	functionNode module: (self getMSEModule: aPyFunctionModel module).
	functions at: aPyFunctionModel put: functionNode.
	self incrementId.
	self addSourceAnchorFor: functionNode.