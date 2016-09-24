{
'notice' : ''
'category' : 'STIG'
}
stigFromDisk: aFromDisk

	| deltas layout |
	layout := DirectoryLayout for: self.
	deltas := layout deltaSetsFrom: self to: aFromDisk.
	deltas buildCompositeChange execute