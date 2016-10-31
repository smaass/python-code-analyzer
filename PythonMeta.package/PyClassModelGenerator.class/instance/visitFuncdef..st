model creation
visitFuncdef: funcDef
	|methodModel|
	
	methodModel := PyMethodModelGenerator new
		astNode: funcDef;
		metaModel: self metaModel;
		parentClass: classModel;
		generate.
		
	^ methodModel