hooks
renderIn: aView
	|elements|
	
	elements := self buildClassesElements: classes.
	view addAll: elements.
	self addEdgesToElements: elements.
	self layoutElements: elements.
	view pushBackEdges.
	view @ RTDraggableView.