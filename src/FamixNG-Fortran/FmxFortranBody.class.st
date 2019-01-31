"
I model the body of an entity in Fortran. I store accesses to variable and invocations made by my container.

3 kinds of entities can have a body:
- Programs
- Functions
- Subroutines
"
Class {
	#name : #FmxFortranBody,
	#superclass : #FmxFortranEntity,
	#traits : 'FamixTWithAccesses + FmxFortranTWithStaticInvocations',
	#classTraits : 'FamixTWithAccesses classTrait + FmxFortranTWithStaticInvocations classTrait',
	#instVars : [
		'#container => FMOne type: #FmxFortranTWithBody opposite: #body'
	],
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranBody class >> annotation [

	<MSEClass: #Body super: #FmxFortranEntity>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranBody class >> generatedSlotNames [
	<generated>
	'FmxFortranBody class>>#generatedSlotNames'.
	^ #(container)
]

{ #category : #generator }
FmxFortranBody class >> generatedTraitNames [
	<generated>
	^ #(FamixTWithAccesses FmxFortranTWithStaticInvocations)
]

{ #category : #meta }
FmxFortranBody class >> requirements [

	<generated>
	^ { FmxFortranProgram. FmxFortranSubProgram }
]

{ #category : #accessing }
FmxFortranBody >> belongsTo [

	<generated>
	^ self container

]

{ #category : #accessing }
FmxFortranBody >> belongsTo: anObject [

	<generated>
	self container: anObject

]

{ #category : #accessing }
FmxFortranBody >> container [

	<generated>
	<container>

	^ container
]

{ #category : #accessing }
FmxFortranBody >> container: anObject [

	<generated>
	container := anObject

]

{ #category : #navigation }
FmxFortranBody >> containerGroup [

	<generated>
	<navigation: 'Container'>
	^ MooseGroup
			with: (self container)
]
