source
source
	|contents start end|
	contents := self sourceFileContents.
	start := self sourceStartPosition.
	end := self sourceStopPosition.
	
	^ contents size > end
		ifTrue: [ contents copyFrom: start to: end ]
		ifFalse: [ contents copyFrom: start to: contents size ]
