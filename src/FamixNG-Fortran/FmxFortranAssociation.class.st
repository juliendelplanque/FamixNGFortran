Class {
	#name : #FmxFortranAssociation,
	#superclass : #FmxFortranSourcedEntity,
	#traits : 'FamixTAssociation + TAssociationMetaLevelDependency',
	#classTraits : 'FamixTAssociation classTrait + TAssociationMetaLevelDependency classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranAssociation class >> annotation [

	<MSEClass: #Association super: #FmxFortranSourcedEntity>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranAssociation class >> generatedSlotNames [
	<generated>
	'FmxFortranAssociation class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranAssociation class >> generatedTraitNames [
	<generated>
	^ #(FamixTAssociation TAssociationMetaLevelDependency)
]

{ #category : #meta }
FmxFortranAssociation class >> requirements [

	<generated>
	^ {  }
]
