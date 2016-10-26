*PythonMeta
viewMultipleInheritance
	<menuItem: 'Multiple inheritance graph' category: 'Visualize'>
	| view |
	view := self multipleInheritanceView.
	^ view openWithToolbarEntitled: 'Multiple inheritance graph'