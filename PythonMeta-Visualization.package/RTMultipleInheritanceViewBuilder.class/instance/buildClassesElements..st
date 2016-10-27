as yet unclassified
buildClassesElements: aFAMIXClassGroup
	|elements|
	
	elements := classes collect: [ :class |
		| shape |
		class isStub
			ifTrue: [
				shape := RTBox new size: 20; color: (Color blue alpha: 0.5)
			]
			ifFalse: [
				|classDiameter|
				classDiameter := class numberOfLinesOfCode sqrt * 2 + 10 round: 0.
				shape := RTEllipse new size: classDiameter.
				class superInheritances size = 1 ifTrue: [ shape color: (Color darkGray alpha: 0.5) ].
				class superInheritances size = 2 ifTrue: [ shape color: (Color orange alpha: 0.5) ].
				class superInheritances size > 2 ifTrue: [ shape color: (Color red alpha: 0.5) ]
			].
		
		RTElement new
			model: class;
			addShape: shape;
			@ RTDraggable;
			@ RTPopup
	].

	^ elements asGroup