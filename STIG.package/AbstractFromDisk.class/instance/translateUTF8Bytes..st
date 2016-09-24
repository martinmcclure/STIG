{
'notice' : ''
'category' : 'private'
}
translateUTF8Bytes: aByteArray

	^(self translateSingleByteUTF8: aByteArray)
		ifNil: [ (aByteArray withEncoding: #utf8) readStream
				setLineEndConventionFromContents;
				upToEnd ]