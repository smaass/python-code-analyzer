analysis
explore
	| model writeStream |
	
	writeStream := WriteStream on: String new.
	self exportTo: writeStream.
	
	model := MooseModel new
		name: 'Python model';
		importFromMSEStream: writeStream contents readStream.
		
	MooseFinder new first openOn: model