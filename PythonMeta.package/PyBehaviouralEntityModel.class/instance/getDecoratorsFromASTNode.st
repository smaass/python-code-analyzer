as yet unclassified
getDecoratorsFromASTNode
	|parent|
	parent := astNode parent.
	^ parent class = PyDecoratedNode
		ifTrue: [
			parent decorators decorators flatCollect: [ :decoratorNode |
				decoratorNode dotted_name names collect: [ :decoratorName |
					decoratorName value
				]
			]
		]
		ifFalse: [ #() ]