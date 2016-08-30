building
build
	self classes do: [ :cls | cls connectInMetamodel: self ]