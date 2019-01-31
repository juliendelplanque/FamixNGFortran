Trait {
	#name : #FmxFortranTWithBody,
	#instVars : [
		'#body => FMOne type: #FmxFortranBody opposite: #container'
	],
	#category : #'FamixNG-Fortran-Traits'
}

{ #category : #meta }
FmxFortranTWithBody classSide >> annotation [

	<MSEClass: #TWithBody super: #Trait>
	<generated>
	<package: #'FamixNG-Fortran'>
	^self
]

{ #category : #generator }
FmxFortranTWithBody classSide >> generatedSlotNames [
	<generated>
	'FmxFortranTWithBody class>>#generatedSlotNames'.
	^ #(body)
]

{ #category : #generator }
FmxFortranTWithBody classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxFortranTWithBody >> body [

	<generated>
	^ body
]

{ #category : #accessing }
FmxFortranTWithBody >> body: anObject [

	<generated>
	body := anObject

]

{ #category : #navigation }
FmxFortranTWithBody >> bodyGroup [

	<generated>
	<navigation: 'Body'>
	^ MooseGroup
			with: (self body)
]
