{
'notice' : ''
'category' : 'instance creation'
}
for: package

	| layout |
	layout := DefaultLayout.
	(package stigRoot asFilename / 'properties.ston') exists
		ifTrue: [layout := ExperimentalCypressLayout].
	^(layout new)
		package: package;
		yourself