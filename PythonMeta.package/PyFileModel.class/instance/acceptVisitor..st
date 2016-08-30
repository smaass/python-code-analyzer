visitor
acceptVisitor: aVisitor
	aVisitor visitFileModel: self.
	classes do: [ :class | class acceptVisitor: aVisitor ].
	functions do: [ :function | function acceptVisitor: aVisitor ]