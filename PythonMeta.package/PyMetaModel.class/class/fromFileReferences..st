public
fromFileReferences: fileReferences
	|metaModel|
	
	metaModel := PyMetaModel new.
	fileReferences do: [ :file |
		PyFileModelGenerator fromFile: file forMetamodel: metaModel
	].
	metaModel build.

	^ metaModel