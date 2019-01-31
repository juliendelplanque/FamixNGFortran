Class {
	#name : #FmxFortranMultipleFileAnchor,
	#superclass : #FmxFortranSourceAnchor,
	#traits : 'FamixTMultipleFileAnchor',
	#classTraits : 'FamixTMultipleFileAnchor classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranMultipleFileAnchor class >> annotation [

	<MSEClass: #MultipleFileAnchor super: #FmxFortranSourceAnchor>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranMultipleFileAnchor class >> generatedSlotNames [
	<generated>
	'FmxFortranMultipleFileAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranMultipleFileAnchor class >> generatedTraitNames [
	<generated>
	^ #(FamixTMultipleFileAnchor)
]

{ #category : #meta }
FmxFortranMultipleFileAnchor class >> requirements [

	<generated>
	^ {  }
]
