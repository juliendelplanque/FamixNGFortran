Class {
	#name : #FmxFortranAbstractFileAnchor,
	#superclass : #FmxFortranSourceAnchor,
	#traits : 'FamixTFileAnchor',
	#classTraits : 'FamixTFileAnchor classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranAbstractFileAnchor class >> annotation [

	<MSEClass: #AbstractFileAnchor super: #FmxFortranSourceAnchor>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranAbstractFileAnchor class >> generatedSlotNames [
	<generated>
	'FmxFortranAbstractFileAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranAbstractFileAnchor class >> generatedTraitNames [
	<generated>
	^ #(FamixTFileAnchor)
]

{ #category : #meta }
FmxFortranAbstractFileAnchor class >> requirements [

	<generated>
	^ {  }
]
