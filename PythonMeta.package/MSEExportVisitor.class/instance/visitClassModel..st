visitor
visitClassModel: aPyClassModel
	|exportClassNode containerNode|
	
	containerNode := aPyClassModel container isPyModule
		ifTrue: [ files at: aPyClassModel container ]
		ifFalse: [ classes at: aPyClassModel container ].
	
	exportClassNode := MSEClass new
		pyModel: aPyClassModel
		withId: currentId;
		container: containerNode.
		
	classes at: aPyClassModel put: exportClassNode.
	self incrementId.
	self addSourceAnchorFor: exportClassNode.
	
	aPyClassModel superclasses do: [ :superclass |
		self linkSubclass: aPyClassModel toSuperclass: superclass
	].

	aPyClassModel innerClasses do: [ :innerClass |
		innerClass acceptVisitor: self
	]