Trait {
	#name : #FmxFortranTStaticInvocable,
	#instVars : [
		'#incomingStaticInvocations => FMMany type: #FmxFortranTStaticInvocation opposite: #target'
	],
	#category : #'FamixNG-Fortran-Traits'
}

{ #category : #meta }
FmxFortranTStaticInvocable classSide >> annotation [

	<MSEClass: #TStaticInvocable super: #Trait>
	<generated>
	<package: #'FamixNG-Fortran'>
	^self
]

{ #category : #generator }
FmxFortranTStaticInvocable classSide >> generatedSlotNames [
	<generated>
	'FmxFortranTStaticInvocable class>>#generatedSlotNames'.
	^ #(incomingStaticInvocations)
]

{ #category : #generator }
FmxFortranTStaticInvocable classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxFortranTStaticInvocable >> incomingStaticInvocations [

	<generated>
	^ incomingStaticInvocations
]

{ #category : #accessing }
FmxFortranTStaticInvocable >> incomingStaticInvocations: anObject [

	<generated>
	incomingStaticInvocations value: anObject

]
