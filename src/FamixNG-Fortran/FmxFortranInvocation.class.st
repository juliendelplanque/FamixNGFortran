"
I model an (static) invocation in Fortran.
"
Class {
	#name : #FmxFortranInvocation,
	#superclass : #FmxFortranAssociation,
	#traits : 'FmxFortranTStaticInvocation',
	#classTraits : 'FmxFortranTStaticInvocation classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranInvocation class >> annotation [

	<MSEClass: #Invocation super: #FmxFortranAssociation>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranInvocation class >> generatedSlotNames [
	<generated>
	'FmxFortranInvocation class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranInvocation class >> generatedTraitNames [
	<generated>
	^ #(FmxFortranTStaticInvocation)
]

{ #category : #meta }
FmxFortranInvocation class >> requirements [

	<generated>
	^ {  }
]
