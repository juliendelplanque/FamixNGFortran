Class {
	#name : #FmxFortranSourceAnchor,
	#superclass : #FmxFortranEntity,
	#traits : 'FamixTSourceAnchor + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FamixTSourceAnchor classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranSourceAnchor class >> annotation [

	<MSEClass: #SourceAnchor super: #FmxFortranEntity>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranSourceAnchor class >> generatedSlotNames [
	<generated>
	'FmxFortranSourceAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranSourceAnchor class >> generatedTraitNames [
	<generated>
	^ #(FamixTSourceAnchor TDependencyQueries TEntityMetaLevelDependency)
]

{ #category : #meta }
FmxFortranSourceAnchor class >> requirements [

	<generated>
	^ {  }
]
