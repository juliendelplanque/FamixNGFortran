Class {
	#name : #FmxFortranNamedEntity,
	#superclass : #FmxFortranSourcedEntity,
	#traits : 'FamixTNamed + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FamixTNamed classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranNamedEntity class >> annotation [

	<MSEClass: #NamedEntity super: #FmxFortranSourcedEntity>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranNamedEntity class >> generatedSlotNames [
	<generated>
	'FmxFortranNamedEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranNamedEntity class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed TDependencyQueries TEntityMetaLevelDependency)
]

{ #category : #meta }
FmxFortranNamedEntity class >> requirements [

	<generated>
	^ {  }
]
