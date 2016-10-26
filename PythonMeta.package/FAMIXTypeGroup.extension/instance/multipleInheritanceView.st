*PythonMeta
multipleInheritanceView
	| view elements layout arrow |	
	view := RTView new.
	elements := (self collect: [ :class |
		| shape |
		class isStub
			ifTrue: [
				shape := RTBox new size: 20; color: (Color blue alpha: 0.5)
			]
			ifFalse: [
				|classDiameter|
				classDiameter := class numberOfLinesOfCode sqrt * 2 + 10 round: 0.
				shape := RTEllipse new size: classDiameter.
				class superInheritances size > 1
					ifTrue: [ shape color: (Color red alpha: 0.5) ]
					ifFalse: [ shape color: (Color darkGray alpha: 0.5) ].
			].
		
		RTElement new
			model: class;
			addShape: shape;
			@ RTDraggable;
			@ RTPopup
	]) asGroup. 

	view addAll: elements.

	arrow := RTArrowedLine new
		color: (Color gray alpha: 0.5);
		attachPoint: RTCenteredAttachPoint instance.

	RTEdgeBuilder new
		view: view;
		shape: arrow;
		elements: elements;
		connectToAll: [ :class | class superInheritances collect: #superclass ].

	layout := RTForceBasedLayout new strength: 0.3.
	elements do: [ :elem | layout set: elem charge: (elem model numberOfLinesOfCode + 10) negated * 3].
	layout on: elements.

	view pushBackEdges.
	view @ RTDraggableView.
	^ view