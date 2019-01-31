"
I model a Fortran variable.

There are 4 kind of entities in Fortran's meta-model that can hold variables:
- Modules
- Programs
- Functions
- Subroutine
"
Class {
	#name : #FmxFortranVariable,
	#superclass : #FmxFortranNamedEntity,
	#traits : 'FamixTAccessible + FamixTLocalVariable',
	#classTraits : 'FamixTAccessible classTrait + FamixTLocalVariable classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranVariable class >> annotation [

	<MSEClass: #Variable super: #FmxFortranNamedEntity>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranVariable class >> generatedSlotNames [
	<generated>
	'FmxFortranVariable class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranVariable class >> generatedTraitNames [
	<generated>
	^ #(FamixTAccessible FamixTLocalVariable)
]

{ #category : #meta }
FmxFortranVariable class >> requirements [

	<generated>
	^ { FmxFortranModule. FmxFortranProgram. FmxFortranSubProgram }
]

{ #category : #accessing }
FmxFortranVariable >> belongsTo [

	<generated>
	^ self parentBehaviouralEntity

]

{ #category : #accessing }
FmxFortranVariable >> belongsTo: anObject [

	<generated>
	self parentBehaviouralEntity: anObject

]
