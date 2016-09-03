adding
addClass: pyClassModel
	|name|
	name := pyClassModel isInner
		ifFalse: [ pyClassModel name ]
		ifTrue: [ pyClassModel container name, '->', (pyClassModel name) ].
	classesByName at: name put: pyClassModel.
	classesByASTNode at: pyClassModel astNode put: pyClassModel.