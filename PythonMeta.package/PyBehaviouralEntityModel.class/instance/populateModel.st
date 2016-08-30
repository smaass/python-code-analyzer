populating
populateModel
	self name: astNode fname value.
	self parameters: (astNode parameters
		ifNil: [ #() ]
		ifNotNil: [
			astNode parameters args collect: [ :arg | arg nameToken value ]]
	).
	self decorators: self getDecoratorsFromASTNode.