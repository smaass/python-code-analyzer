generated
visitFuncdef: funcDef

	methodModel := PyMethodModel fromASTNode: funcDef.
	parentClass addMethod: methodModel.
	super visitFuncdef: funcDef.
	^ methodModel