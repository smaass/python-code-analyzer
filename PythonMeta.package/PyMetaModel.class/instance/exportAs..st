export
exportAs: filename
	| exporter |
	exporter := MSEExportVisitor new.
	classStubsByName valuesDo: [ :classStub | classStub acceptVisitor: exporter ].
	files do: [ :file | file acceptVisitor: exporter ].
	exporter exportTo: filename.