instance creation
fromASTNode: astNode
	| model |
	model := self new astNode: astNode.
	model populateModel.
	^ model