as yet unclassified
linkSubclass: aPySubclassModel toSuperclass: aPySuperclassModel
	|inheritanceNode|
	
	inheritanceNode := MSEInheritance new
		id: currentId;
		subclassModel: aPySubclassModel;
		superclassModel: aPySuperclassModel;
		exporter: self.
		
	self incrementId.
	inheritanceNodes add: inheritanceNode.