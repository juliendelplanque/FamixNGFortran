"
I model an abstract sub-program in Fortran.

I hold a body and can be invoked.
"
Class {
	#name : #FmxFortranSubProgram,
	#superclass : #FmxFortranNamedEntity,
	#traits : 'FamixTDefinedInModule + FamixTWithFiles + FamixTWithLocalVariables + FamixTWithParameters + FmxFortranTStaticInvocable + FmxFortranTWithBody',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTWithFiles classTrait + FamixTWithLocalVariables classTrait + FamixTWithParameters classTrait + FmxFortranTStaticInvocable classTrait + FmxFortranTWithBody classTrait',
	#category : #'FamixNG-Fortran-Entities'
}

{ #category : #meta }
FmxFortranSubProgram class >> annotation [

	<MSEClass: #SubProgram super: #FmxFortranNamedEntity>
	<package: #'FamixNG-Fortran'>
	<generated>
	^self
]

{ #category : #generator }
FmxFortranSubProgram class >> generatedSlotNames [
	<generated>
	'FmxFortranSubProgram class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxFortranSubProgram class >> generatedTraitNames [
	<generated>
	^ #(FamixTDefinedInModule FamixTWithFiles FamixTWithLocalVariables FamixTWithParameters FmxFortranTStaticInvocable FmxFortranTWithBody)
]

{ #category : #meta }
FmxFortranSubProgram class >> requirements [

	<generated>
	^ {  }
]
