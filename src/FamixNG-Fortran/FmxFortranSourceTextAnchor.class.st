Class {
	#name : #FmxFortranSourceTextAnchor,
	#superclass : #FmxFortranSourceAnchor,
	#traits : 'FamixTWithImmediateSource',
	#classTraits : 'FamixTWithImmediateSource classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranSourceTextAnchor class >> annotation [

	<MSEClass: #SourceTextAnchor super: #FmxFortranSourceAnchor>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranSourceTextAnchor class >> generatedSlotNames [
	<generated>
	'FmxFortranSourceTextAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranSourceTextAnchor class >> generatedTraitNames [
	<generated>
	^ #(FamixTWithImmediateSource)
]

{ #category : #meta }
FmxFortranSourceTextAnchor class >> requirements [

	<generated>
	^ {  }
]
