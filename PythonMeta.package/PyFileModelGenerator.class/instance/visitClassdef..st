model creation
visitClassdef: classDef
	|classModel|
	
	classModel := PyClassModelGenerator new
		astNode: classDef;
		metaModel: self metaModel;
		generate.
		
	fileModel addClass: classModel.
	self metaModel addClass: classModel.

	^ classModel