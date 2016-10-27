as yet unclassified
layoutElements: elements
	| layout |
	
	layout := RTForceBasedLayout new strength: 0.3.
	elements do: [ :elem |
		layout set: elem charge: (elem model numberOfLinesOfCode + 10) negated * 3
	].
	layout on: elements.