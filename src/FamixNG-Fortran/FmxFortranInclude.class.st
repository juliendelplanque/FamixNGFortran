"
I model the inclusion of a file in a Fortran file.
"
Class {
	#name : #FmxFortranInclude,
	#superclass : #FmxFortranAssociation,
	#traits : 'FamixTFileInclude',
	#classTraits : 'FamixTFileInclude classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranInclude class >> annotation [

	<MSEClass: #Include super: #FmxFortranAssociation>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranInclude class >> generatedSlotNames [
	<generated>
	'FmxFortranInclude class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranInclude class >> generatedTraitNames [
	<generated>
	^ #(FamixTFileInclude)
]

{ #category : #meta }
FmxFortranInclude class >> requirements [

	<generated>
	^ {  }
]
