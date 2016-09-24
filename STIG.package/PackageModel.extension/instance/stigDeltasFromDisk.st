{
'notice' : ''
'category' : 'STIG'
}
stigDeltasFromDisk

	| layout fromDisk |
	layout := DirectoryLayout for: self.
	fromDisk := ((layout packageFromDisk: self name) read: layout).
	^layout deltaSetsFrom: self to: fromDisk