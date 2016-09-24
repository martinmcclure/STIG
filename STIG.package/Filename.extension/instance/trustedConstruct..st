{
'notice' : ''
'category' : 'instance creation'
}
trustedConstruct: aFilepath

	^self class new named: (self constructString: aFilepath)