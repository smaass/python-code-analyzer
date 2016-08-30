creation
fromFile: file forMetamodel: metaModel
	|fileContents fileAST|
	
	fileContents := file contents.
	fileAST := PythonParser2 parse: fileContents.
	
	^ self new
		astNode: fileAST;
		metaModel: metaModel;
		filepath: file fullName;
		fileContents: fileContents;
		generate
