export
exportTo: filename

	exportStream := FileStream newFileNamed: filename.
	exportStream
		nextPut: $(;
		nextPut: Character cr.

	files do: [ :file | file exportTo: exportStream ].
	functions do: [ :function | function exportTo: exportStream ].
	classes do: [ :class | class exportTo: exportStream ].
	inheritanceNodes do: [ :inheritance | inheritance exportTo: exportStream ].
	methods do: [ :method | method exportTo: exportStream ].
	sourceAnchors do: [ :source | source exportTo: exportStream ].

	MSESourceLanguage new
		id: currentId;
		language: 'Python';
		exportTo: exportStream.
		
	exportStream nextPut: $).
	exportStream close.