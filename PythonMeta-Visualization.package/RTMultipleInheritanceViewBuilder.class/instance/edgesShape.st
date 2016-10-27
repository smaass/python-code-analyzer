as yet unclassified
edgesShape

	^ RTArrowedLine new
		color: [ :edge |
			edge key superInheritances size > 1
				ifTrue: [ Color red alpha: 0.5 ]
				ifFalse: [ Color gray alpha: 0.5 ]
		];
		attachPoint: RTCenteredAttachPoint instance.