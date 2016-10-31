model creation
visitExprStmt: expressionNode

		expressionNode assigns size = 1 ifTrue: [ 
			| clsAttrNode clsAttrModel |
			clsAttrNode := expressionNode tests first atom.
			clsAttrModel := PyAttributeModel fromASTNode: clsAttrNode.
			clsAttrModel markWithClassScope.
			classModel addAttribute: clsAttrModel.
		].
	
	^ super visitExprStmt: expressionNode.