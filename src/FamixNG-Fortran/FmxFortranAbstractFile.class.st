Class {
	#name : #FmxFortranAbstractFile,
	#superclass : #FmxFortranNamedEntity,
	#traits : 'FamixTFileSystemEntity',
	#classTraits : 'FamixTFileSystemEntity classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranAbstractFile class >> annotation [

	<MSEClass: #AbstractFile super: #FmxFortranNamedEntity>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranAbstractFile class >> generatedSlotNames [
	<generated>
	'FmxFortranAbstractFile class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranAbstractFile class >> generatedTraitNames [
	<generated>
	^ #(FamixTFileSystemEntity)
]

{ #category : #meta }
FmxFortranAbstractFile class >> requirements [

	<generated>
	^ {  }
]
