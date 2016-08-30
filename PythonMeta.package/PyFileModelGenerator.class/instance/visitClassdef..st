model creation
visitClassdef: classDef
	|classModel|
	
	classModel := PyClassModelGenerator generateFromClassNode: classDef.
	metaModel addClass: classModel.
	(metaModel files at: astNode) addClass: classModel.

	^ classModel