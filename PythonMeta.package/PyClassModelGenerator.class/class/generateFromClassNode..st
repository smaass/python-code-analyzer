creation
generateFromClassNode: aPyClassdefNode

	^ self new
		astNode: aPyClassdefNode;
		generate