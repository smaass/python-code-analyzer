as yet unclassified
addEdgesToElements: elements

	RTEdgeBuilder new
		view: view;
		shape: self edgesShape;
		elements: elements;
		connectToAll: [ :class | class superInheritances collect: #superclass ].