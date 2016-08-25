"
notice: Copyright 2012 Travis Griggs, Martin Kobetic
category: loading
"
readBoundVariable: variable

	variable directoryContentsDo: 
			[:eachFile :eachTail |
			(eachFile isDirectory
				or: [eachTail = self commentFile or: [eachTail = self licenseFile]])
					ifFalse: 
						[eachTail = self propertyFile
							ifTrue: 
								[(variable name endsWith: '.pool')
									ifTrue: [self readNamespace: eachFile using: variable]
									ifFalse: [self readClass: eachFile using: variable]]
							ifFalse: 
								[(eachTail endsWith: '.json')
									ifTrue: [self readSharedVariable: eachFile using: variable]
									ifFalse: 
										["Ignore unrecognized files"
										]]]].
	variable directory: 'class'
		contentsDo: 
			[:file :tail |
			file extension = '.st'
				ifTrue: 
					[self
						readMethod: file
						tail: tail
						instance: false
						using: variable]].
	variable directory: 'instance'
		contentsDo: 
			[:file :tail |
			file extension = '.st'
				ifTrue: 
					[self
						readMethod: file
						tail: tail
						instance: true
						using: variable]].
	^variable