populating
populateModel

	self name: astNode cname value.
	
	self superclassNames: (
		astNode tests collect: [ :node |
			|trailers|
			trailers := node trailers inject: '' into: [ :acc :next |
				acc, '.', (next nameToken value)
			].
			node atom nameToken value, trailers.
		]
	).
