initialization
initialize
	currentId := 1.
	files := Dictionary new.
	functions := Dictionary new.
	classes := Dictionary new.
	methods := Dictionary new.
	inheritanceNodes := OrderedCollection new.
	sourceAnchors := OrderedCollection new.
	exportStream := nil.