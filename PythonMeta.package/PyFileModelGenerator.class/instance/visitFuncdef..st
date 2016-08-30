model creation
visitFuncdef: funcDefNode
	|functionModel|
	
	functionModel := PyFunctionModel fromASTNode: funcDefNode.
	fileModel addFunction: functionModel.
	super visitFuncdef: funcDefNode.
	^ functionModel