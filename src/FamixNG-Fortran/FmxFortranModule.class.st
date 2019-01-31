"
I model a Fortran module.

A module is a group of functions and subroutines. It can also declare variables.
"
Class {
	#name : #FmxFortranModule,
	#superclass : #FmxFortranNamedEntity,
	#traits : 'FamixTModule + FamixTWithFiles + FamixTWithLocalVariables',
	#classTraits : 'FamixTModule classTrait + FamixTWithFiles classTrait + FamixTWithLocalVariables classTrait',
	#instVars : [
		'#incomingUsageRelations => FMMany type: #FmxFortranUsage opposite: #target',
		'#outgoingUsageRelations => FMMany type: #FmxFortranUsage opposite: #source'
	],
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranModule class >> annotation [

	<MSEClass: #Module super: #FmxFortranNamedEntity>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranModule class >> generatedSlotNames [
	<generated>
	'FmxFortranModule class>>#generatedSlotNames'.
	^ #(incomingUsageRelations outgoingUsageRelations)
]

{ #category : #generator }
FmxFortranModule class >> generatedTraitNames [
	<generated>
	^ #(FamixTModule FamixTWithFiles FamixTWithLocalVariables)
]

{ #category : #meta }
FmxFortranModule class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxFortranModule >> incomingUsageRelations [

	<generated>
	^ incomingUsageRelations
]

{ #category : #accessing }
FmxFortranModule >> incomingUsageRelations: anObject [

	<generated>
	incomingUsageRelations value: anObject

]

{ #category : #accessing }
FmxFortranModule >> outgoingUsageRelations [

	<generated>
	^ outgoingUsageRelations
]

{ #category : #accessing }
FmxFortranModule >> outgoingUsageRelations: anObject [

	<generated>
	outgoingUsageRelations value: anObject

]
