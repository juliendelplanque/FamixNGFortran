Class {
	#name : #FmxFortranSourcedEntity,
	#superclass : #FmxFortranEntity,
	#traits : 'FamixTWithComments + FamixTWithFiles + FamixTWithSourceAnchor + FamixTWithSourceLanguage',
	#classTraits : 'FamixTWithComments classTrait + FamixTWithFiles classTrait + FamixTWithSourceAnchor classTrait + FamixTWithSourceLanguage classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranSourcedEntity class >> annotation [

	<MSEClass: #SourcedEntity super: #FmxFortranEntity>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranSourcedEntity class >> generatedSlotNames [
	<generated>
	'FmxFortranSourcedEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranSourcedEntity class >> generatedTraitNames [
	<generated>
	^ #(FamixTWithComments FamixTWithFiles FamixTWithSourceAnchor FamixTWithSourceLanguage)
]

{ #category : #meta }
FmxFortranSourcedEntity class >> requirements [

	<generated>
	^ {  }
]
