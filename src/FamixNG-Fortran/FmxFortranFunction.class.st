"
I model a function in Fortran.

I have multiple parameters and a body.
"
Class {
	#name : #FmxFortranFunction,
	#superclass : #FmxFortranSubProgram,
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranFunction class >> annotation [

	<MSEClass: #Function super: #FmxFortranSubProgram>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranFunction class >> generatedSlotNames [
	<generated>
	'FmxFortranFunction class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranFunction class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxFortranFunction class >> requirements [

	<generated>
	^ {  }
]
