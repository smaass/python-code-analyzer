adding
addSourceAnchorFor: mseExportNode
	|model fileAnchor|

	model := mseExportNode pyModel.
	fileAnchor := MSEFileAnchor new
		id: currentId;
		filename: model sourceFilename;
		startLine: model sourceStartLine;
		endLine: model sourceEndLine.
		
	self incrementId.
	mseExportNode sourceAnchor: fileAnchor.
	sourceAnchors add: fileAnchor.