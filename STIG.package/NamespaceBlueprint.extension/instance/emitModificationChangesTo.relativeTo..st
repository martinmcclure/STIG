{
'notice' : ''
'category' : 'converting'
}
emitModificationChangesTo: aCompositeChange relativeTo: anOriginalBlueprint

	(anOriginalBlueprint hasSameDefinition: self)
		ifFalse: 
			[aCompositeChange
				addChange: (Refactory.Browser.AddNameSpaceChange new fromBlueprint: self)].
	(anOriginalBlueprint hasSameComment: self)
		ifFalse: [aCompositeChange addChange: self asCommentUpdateChange]