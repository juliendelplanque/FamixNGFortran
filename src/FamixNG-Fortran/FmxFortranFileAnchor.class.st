Class {
	#name : #FmxFortranFileAnchor,
	#superclass : #FmxFortranAbstractFileAnchor,
	#traits : 'FamixTFileNavigation',
	#classTraits : 'FamixTFileNavigation classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranFileAnchor class >> annotation [

	<MSEClass: #FileAnchor super: #FmxFortranAbstractFileAnchor>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranFileAnchor class >> generatedSlotNames [
	<generated>
	'FmxFortranFileAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranFileAnchor class >> generatedTraitNames [
	<generated>
	^ #(FamixTFileNavigation)
]

{ #category : #meta }
FmxFortranFileAnchor class >> requirements [

	<generated>
	^ {  }
]
