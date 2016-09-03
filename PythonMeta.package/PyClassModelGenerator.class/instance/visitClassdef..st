model creation
visitClassdef: classDefNode

	classModel
		ifNil: [
			classModel := PyClassModel fromASTNode: classDefNode.
			super visitClassdef: classDefNode.
			^ classModel
		]
		ifNotNil: [
			|innerClassModel|
			innerClassModel := PyClassModelGenerator new
				astNode: classDefNode;
				metaModel: self metaModel;
				generate.
			classModel addInnerClass: innerClassModel.
			self metaModel addClass: innerClassModel.
			^ innerClassModel
		].
