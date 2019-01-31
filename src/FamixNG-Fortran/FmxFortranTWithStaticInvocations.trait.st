Trait {
	#name : #FmxFortranTWithStaticInvocations,
	#instVars : [
		'#outgoingStaticInvocations => FMMany type: #FmxFortranTStaticInvocation opposite: #caller'
	],
	#category : #'FamixNG-Fortran-Traits'
}

{ #category : #meta }
FmxFortranTWithStaticInvocations classSide >> annotation [

	<MSEClass: #TWithStaticInvocations super: #Trait>
	<generated>
	<package: #'FamixNG-Fortran'>
	^self
]

{ #category : #generator }
FmxFortranTWithStaticInvocations classSide >> generatedSlotNames [
	<generated>
	'FmxFortranTWithStaticInvocations class>>#generatedSlotNames'.
	^ #(outgoingStaticInvocations)
]

{ #category : #generator }
FmxFortranTWithStaticInvocations classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxFortranTWithStaticInvocations >> outgoingStaticInvocations [

	<generated>
	^ outgoingStaticInvocations
]

{ #category : #accessing }
FmxFortranTWithStaticInvocations >> outgoingStaticInvocations: anObject [

	<generated>
	outgoingStaticInvocations value: anObject

]
