public
fromFiles: filePathsList

	^ self fromFileReferences: (filePathsList collect: #asFileReference)
