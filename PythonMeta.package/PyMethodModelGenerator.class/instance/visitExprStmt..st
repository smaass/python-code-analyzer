generated
visitExprStmt: expressionNode

		expressionNode assigns size = 1 ifTrue: [ 
			| attrNode instanceAttrModel |
			attrNode := expressionNode tests first.
			attrNode atom nameToken value = 'self' ifTrue: [ 
				attrNode trailers size = 1 ifTrue: [
					instanceAttrModel := PyAttributeModel fromASTNode: attrNode trailers first.
					parentClass addAttribute: instanceAttrModel.
				]
			]
		].
	
	^ super visitExprStmt: expressionNode.