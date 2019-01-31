Class {
	#name : #FmxFortranIndexedFileAnchor,
	#superclass : #FmxFortranAbstractFileAnchor,
	#traits : 'FamixTIndexedFileNavigation',
	#classTraits : 'FamixTIndexedFileNavigation classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranIndexedFileAnchor class >> annotation [

	<MSEClass: #IndexedFileAnchor super: #FmxFortranAbstractFileAnchor>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranIndexedFileAnchor class >> generatedSlotNames [
	<generated>
	'FmxFortranIndexedFileAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranIndexedFileAnchor class >> generatedTraitNames [
	<generated>
	^ #(FamixTIndexedFileNavigation)
]

{ #category : #meta }
FmxFortranIndexedFileAnchor class >> requirements [

	<generated>
	^ {  }
]
