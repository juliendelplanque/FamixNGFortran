Class {
	#name : #FmxFortranProgram,
	#superclass : #FmxFortranNamedEntity,
	#traits : 'FamixTWithFiles + FamixTWithLocalVariables + FmxFortranTWithBody',
	#classTraits : 'FamixTWithFiles classTrait + FamixTWithLocalVariables classTrait + FmxFortranTWithBody classTrait',
	#instVars : [
		'#outgoingUsageRelations => FMMany type: #FmxFortranUsage opposite: #source'
	],
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranProgram class >> annotation [

	<MSEClass: #Program super: #FmxFortranNamedEntity>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranProgram class >> generatedSlotNames [
	<generated>
	'FmxFortranProgram class>>#generatedSlotNames'.
	^ #(outgoingUsageRelations)
]

{ #category : #generator }
FmxFortranProgram class >> generatedTraitNames [
	<generated>
	^ #(FamixTWithFiles FamixTWithLocalVariables FmxFortranTWithBody)
]

{ #category : #meta }
FmxFortranProgram class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxFortranProgram >> outgoingUsageRelations [

	<generated>
	^ outgoingUsageRelations
]

{ #category : #accessing }
FmxFortranProgram >> outgoingUsageRelations: anObject [

	<generated>
	outgoingUsageRelations value: anObject

]
