public
fromDirectory: directoryPath
	|pyFiles|
	
	pyFiles := directoryPath asFileReference allChildrenMatching: '*.py'.
	^ self fromFileReferences: pyFiles.