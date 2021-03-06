"
notice: Copyright 2012 Travis Griggs, Martin Kobetic
category: private
"
encodeSelector: aSymbol

	^aSymbol last = $:
		ifTrue: [aSymbol collect: [:each | each = $: ifTrue: [$.] ifFalse: [each]]]
		ifFalse: 
			[(aSymbol first isAlphabetic or: [ aSymbol first = $_ ]) 
				ifTrue: [aSymbol]
				ifFalse: 
					[| output specials |
					specials := self class specials.
					output := String new writeStream.
					output nextPut: $^.
					aSymbol do: [:each | output nextPutAll: (specials at: each) ]
						separatedBy: [output nextPut: $.].
					output contents]]