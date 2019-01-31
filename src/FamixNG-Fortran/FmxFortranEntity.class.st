Class {
	#name : #FmxFortranEntity,
	#superclass : #MooseEntity,
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranEntity class >> annotation [

	<MSEClass: #Entity super: #MooseEntity>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranEntity class >> generatedSlotNames [
	<generated>
	'FmxFortranEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranEntity class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxFortranEntity class >> metamodel [

	<generated>
	^ (self class environment at: #FmxNGFortranGenerator) metamodel
]

{ #category : #meta }
FmxFortranEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FmxFortranEntity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FmxFortranEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FmxFortranEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FmxFortranEntity >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FmxFortranEntity >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FmxFortranEntity >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FmxFortranEntity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FmxFortranEntity >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FmxFortranEntity >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FmxFortranEntity >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FmxFortranEntity >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FmxFortranEntity >> isType [

	<generated>
	^ false
]
