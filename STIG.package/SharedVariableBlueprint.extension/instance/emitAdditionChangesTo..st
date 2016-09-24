{
'notice' : ''
'category' : 'converting'
}
emitAdditionChangesTo: aCompositeChange

	aCompositeChange addChange: (Refactory.Browser.AddSharedVariableChange new
				fromBlueprint: self)