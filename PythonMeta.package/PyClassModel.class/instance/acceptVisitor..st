visitor
acceptVisitor: aVisitor
	aVisitor visitClassModel: self.
	methods do: [ :method | method acceptVisitor: aVisitor ]