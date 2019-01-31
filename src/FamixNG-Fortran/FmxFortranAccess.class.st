"
I model the access to a variable in a Fortran program.
"
Class {
	#name : #FmxFortranAccess,
	#superclass : #FmxFortranAssociation,
	#traits : 'FamixTAccess',
	#classTraits : 'FamixTAccess classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranAccess class >> annotation [

	<MSEClass: #Access super: #FmxFortranAssociation>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranAccess class >> generatedSlotNames [
	<generated>
	'FmxFortranAccess class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranAccess class >> generatedTraitNames [
	<generated>
	^ #(FamixTAccess)
]

{ #category : #meta }
FmxFortranAccess class >> requirements [

	<generated>
	^ {  }
]
