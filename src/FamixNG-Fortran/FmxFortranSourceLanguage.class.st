Class {
	#name : #FmxFortranSourceLanguage,
	#superclass : #FmxFortranEntity,
	#traits : 'FamixTSourceLanguage',
	#classTraits : 'FamixTSourceLanguage classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranSourceLanguage class >> annotation [

	<MSEClass: #SourceLanguage super: #FmxFortranEntity>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranSourceLanguage class >> generatedSlotNames [
	<generated>
	'FmxFortranSourceLanguage class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranSourceLanguage class >> generatedTraitNames [
	<generated>
	^ #(FamixTSourceLanguage)
]

{ #category : #meta }
FmxFortranSourceLanguage class >> requirements [

	<generated>
	^ {  }
]
