as yet unclassified
connectInMetamodel: metaModel

	superclassNames do: [ :superclassName |
		|supercls|
		supercls := metaModel classesByName at: superclassName ifAbsent: [
			metaModel classStubsByName at: superclassName ifAbsent: [ 
				|stub|
				stub := PyClassStub new name: superclassName.
				metaModel addClassStub: stub.
				stub
			]
		].
		self addSuperclass: supercls
	]