model creation
visitFileInput: aFileInput
	self assert: fileModel isNil.
	
	fileModel := PyFileModel fromASTNode: aFileInput.
	fileModel
		filename: filepath;
		source: self fileContents.
		
	metaModel addFile: fileModel.
	super visitFileInput: aFileInput.
	^ fileModel