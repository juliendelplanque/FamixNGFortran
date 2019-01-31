Class {
	#name : #FmxFortranFile,
	#superclass : #FmxFortranAbstractFile,
	#traits : 'FamixTFile + FamixTWithFileInclude',
	#classTraits : 'FamixTFile classTrait + FamixTWithFileInclude classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranFile class >> annotation [

	<MSEClass: #File super: #FmxFortranAbstractFile>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranFile class >> generatedSlotNames [
	<generated>
	'FmxFortranFile class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranFile class >> generatedTraitNames [
	<generated>
	^ #(FamixTFile FamixTWithFileInclude)
]

{ #category : #meta }
FmxFortranFile class >> requirements [

	<generated>
	^ {  }
]
