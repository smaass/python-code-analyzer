visitor
acceptVisitor: aVisitor
	aVisitor visitClassModel: self.
	methods do: [ :method | method acceptVisitor: aVisitor ].
	attributes do: [ :attr | attr acceptVisitor: aVisitor ]