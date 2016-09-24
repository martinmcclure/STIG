{
'notice' : ''
'category' : 'STIG'
}
stigFromDisk

	| layout |
	layout := DirectoryLayout for: self.
	self stigFromDisk: ((layout packageFromDisk: self name) read: layout)