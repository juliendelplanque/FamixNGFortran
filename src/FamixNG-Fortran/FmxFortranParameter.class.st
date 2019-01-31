"
I model a Fortran parameter.

To kind of entities can hold parameters:
- Functions
- Subroutines
"
Class {
	#name : #FmxFortranParameter,
	#superclass : #FmxFortranNamedEntity,
	#traits : 'FamixTAccessible + FamixTParameter',
	#classTraits : 'FamixTAccessible classTrait + FamixTParameter classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranParameter class >> annotation [

	<MSEClass: #Parameter super: #FmxFortranNamedEntity>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranParameter class >> generatedSlotNames [
	<generated>
	'FmxFortranParameter class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranParameter class >> generatedTraitNames [
	<generated>
	^ #(FamixTAccessible FamixTParameter)
]

{ #category : #meta }
FmxFortranParameter class >> requirements [

	<generated>
	^ { FmxFortranSubProgram }
]

{ #category : #accessing }
FmxFortranParameter >> belongsTo [

	<generated>
	^ self parentBehaviouralEntity

]

{ #category : #accessing }
FmxFortranParameter >> belongsTo: anObject [

	<generated>
	self parentBehaviouralEntity: anObject

]
