Trait {
	#name : #FmxFortranTStaticInvocation,
	#instVars : [
		'#caller => FMOne type: #FmxFortranTWithStaticInvocations opposite: #outgoingStaticInvocations',
		'#target => FMOne type: #FmxFortranTStaticInvocable opposite: #incomingStaticInvocations'
	],
	#category : #'FamixNG-Fortran-Traits'
}

{ #category : #meta }
FmxFortranTStaticInvocation classSide >> annotation [

	<MSEClass: #TStaticInvocation super: #Trait>
	<generated>
	<package: #'FamixNG-Fortran'>
	^self
]

{ #category : #generator }
FmxFortranTStaticInvocation classSide >> generatedSlotNames [
	<generated>
	'FmxFortranTStaticInvocation class>>#generatedSlotNames'.
	^ #(caller target)
]

{ #category : #generator }
FmxFortranTStaticInvocation classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxFortranTStaticInvocation >> caller [

	<generated>
	^ caller
]

{ #category : #accessing }
FmxFortranTStaticInvocation >> caller: anObject [

	<generated>
	caller := anObject

]

{ #category : #accessing }
FmxFortranTStaticInvocation >> target [

	<generated>
	^ target
]

{ #category : #accessing }
FmxFortranTStaticInvocation >> target: anObject [

	<generated>
	target := anObject

]
