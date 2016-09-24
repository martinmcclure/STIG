{
'notice' : ''
'category' : 'menus'
}
stigSetRootMenuItem
	<itemInMenu: #(#pundleMenu #stigMenu) position: 90.5>

	^(MenuItem labeled: 'Set Root')
		value: [
			(  Dialog request: 'Root directory for this project?' initialAnswer: (self packages first propertyAt: #STIGRoot) onCancel: [])
				ifNotNil: [ :root | self packages do: [ :package | package propertyAt: #STIGRoot put: root ] ] ]