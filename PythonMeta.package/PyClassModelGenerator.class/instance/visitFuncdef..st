model creation
visitFuncdef: funcDef
	|methodModel|
	
	methodModel := PyMethodModel fromASTNode: funcDef.
	classModel addMethod: methodModel.
	super visitFuncdef: funcDef.
	^ methodModel