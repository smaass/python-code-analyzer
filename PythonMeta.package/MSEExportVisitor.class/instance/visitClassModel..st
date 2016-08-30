visitor
visitClassModel: aPyClassModel
	|exportClassNode containerNode|
	
	containerNode := files at: aPyClassModel module.
	
	exportClassNode := MSEClass new
		pyModel: aPyClassModel
		withId: currentId;
		container: containerNode.
		
	classes at: aPyClassModel put: exportClassNode.
	self incrementId.
	self addSourceAnchorFor: exportClassNode.
	
	aPyClassModel superclasses do: [ :superclass |
		self linkSubclass: aPyClassModel toSuperclass: superclass
	]