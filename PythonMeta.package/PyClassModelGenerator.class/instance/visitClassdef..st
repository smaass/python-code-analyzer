model creation
visitClassdef: classDefNode

	self assert: classModel isNil.
	classModel := PyClassModel fromASTNode: classDefNode.
	super visitClassdef: classDefNode.
	^ classModel