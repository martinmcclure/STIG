{
'notice' : ''
'category' : 'private'
}
deltaSetsFrom: aPackage to: disk
	
	| deltas |
	deltas := DeltaSets from: aPackage to: disk.
	deltas trimProperties: (IgnoredProperties copyWith: #_cypress_copyright).
	^deltas compute