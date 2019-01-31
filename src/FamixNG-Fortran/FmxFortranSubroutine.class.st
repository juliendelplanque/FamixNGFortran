"
I model a sub-routine in Fortran.

I have multiple parameters and a body.
"
Class {
	#name : #FmxFortranSubroutine,
	#superclass : #FmxFortranSubProgram,
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranSubroutine class >> annotation [

	<MSEClass: #Subroutine super: #FmxFortranSubProgram>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranSubroutine class >> generatedSlotNames [
	<generated>
	'FmxFortranSubroutine class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranSubroutine class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxFortranSubroutine class >> requirements [

	<generated>
	^ {  }
]
