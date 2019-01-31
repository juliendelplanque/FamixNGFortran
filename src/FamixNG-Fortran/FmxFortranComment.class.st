Class {
	#name : #FmxFortranComment,
	#superclass : #FmxFortranSourcedEntity,
	#traits : 'FamixTComment',
	#classTraits : 'FamixTComment classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranComment class >> annotation [

	<MSEClass: #Comment super: #FmxFortranSourcedEntity>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranComment class >> generatedSlotNames [
	<generated>
	'FmxFortranComment class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranComment class >> generatedTraitNames [
	<generated>
	^ #(FamixTComment)
]

{ #category : #meta }
FmxFortranComment class >> requirements [

	<generated>
	^ {  }
]
