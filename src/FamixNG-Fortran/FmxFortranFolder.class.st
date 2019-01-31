Class {
	#name : #FmxFortranFolder,
	#superclass : #FmxFortranAbstractFile,
	#traits : 'FamixTFolder',
	#classTraits : 'FamixTFolder classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranFolder class >> annotation [

	<MSEClass: #Folder super: #FmxFortranAbstractFile>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranFolder class >> generatedSlotNames [
	<generated>
	'FmxFortranFolder class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranFolder class >> generatedTraitNames [
	<generated>
	^ #(FamixTFolder)
]

{ #category : #meta }
FmxFortranFolder class >> requirements [

	<generated>
	^ {  }
]
