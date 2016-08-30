visitor
visitClassStubModel: aPyClassStub
	|exportClassNode|
	
	exportClassNode := MSEClass new
		pyModel: aPyClassStub
		withId: currentId.
	
	exportClassNode markAsStub.	
	classes at: aPyClassStub put: exportClassNode.
	self incrementId.