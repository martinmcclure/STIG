{
'notice' : ''
'category' : 'STIG'
}
stigRoot

	^(self propertyAt: #STIGRoot ifAbsent: [ nil ]) ifNil: [ DefaultRoot ]