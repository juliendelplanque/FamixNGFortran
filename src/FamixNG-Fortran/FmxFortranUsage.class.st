"
I model the fact that a Fortran module or program uses another Fortran module.
"
Class {
	#name : #FmxFortranUsage,
	#superclass : #FmxFortranAssociation,
	#instVars : [
		'#source => FMOne type: #FmxFortranModule opposite: #outgoingUsageRelations',
		'#target => FMOne type: #FmxFortranModule opposite: #incomingUsageRelations'
	],
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranUsage class >> annotation [

	<MSEClass: #Usage super: #FmxFortranAssociation>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranUsage class >> generatedSlotNames [
	<generated>
	'FmxFortranUsage class>>#generatedSlotNames'.
	^ #(source target)
]

{ #category : #generator }
FmxFortranUsage class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxFortranUsage class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxFortranUsage >> source [

	<generated>
	^ source
]

{ #category : #accessing }
FmxFortranUsage >> source: anObject [

	<generated>
	source := anObject

]

{ #category : #accessing }
FmxFortranUsage >> target [

	<generated>
	^ target
]

{ #category : #accessing }
FmxFortranUsage >> target: anObject [

	<generated>
	target := anObject

]
