"
notice: 
category: menus
"
stigSetRootMenuItem
	<itemInMenu: #(#pundleMenu #stigMenu) position: 90.5>

	| packages |
	packages := self packages.
	^(MenuItem labeled: 'Set Root') value: 
			[(Dialog
				request: 'Root directory for this project?'
				initialAnswer: (packages isEmpty
						ifTrue: ['']
						ifFalse: 
							[| current |
							current := packages first propertyAt: #STIGRoot.
							current isNil ifTrue: [''] ifFalse: [current]])
				onCancel: [])
					ifNotNil: 
						[:root |
						self packages do: [:package | package propertyAt: #STIGRoot put: root]]]