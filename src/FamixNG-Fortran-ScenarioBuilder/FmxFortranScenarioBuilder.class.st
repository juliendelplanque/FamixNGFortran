Class {
	#name : #FmxFortranScenarioBuilder,
	#superclass : #Object,
	#category : #'FamixNG-Fortran-ScenarioBuilder'
}

{ #category : #building }
FmxFortranScenarioBuilder class >> buildScenario [
	^ Show browser halfOfDisplayWidth topLeft,
	(Create packageNamed: 'FamixNG-Fortran-Generator') thenShowIt ,
	FmxNGFortranGenerator asLGCreateClass thenShowIt ,
	(FmxNGFortranGenerator class >> #packageName) asLGCreateMethod thenShowIt ,
	(FmxNGFortranGenerator class >> #prefix) asLGCreateMethod thenShowIt ,
	(FmxNGFortranGenerator class >> #generate) asLGCreateMethod thenShowIt ,
	(FmxNGFortranGenerator >> #defineClasses) asLGCreateMethod thenShowIt ,
	((FmxNGFortranGenerator>>#variableComment) asLGCreateMethod
		+ (FmxNGFortranGenerator>>#accessComment) asLGCreateMethod
		+ (FmxNGFortranGenerator>>#bodyComment) asLGCreateMethod
		+ (FmxNGFortranGenerator>>#functionComment) asLGCreateMethod
		+ (FmxNGFortranGenerator>>#includeComment) asLGCreateMethod
		+ (FmxNGFortranGenerator>>#invocationComment) asLGCreateMethod
		+ (FmxNGFortranGenerator>>#parameterComment) asLGCreateMethod
		+ (FmxNGFortranGenerator>>#programComment) asLGCreateMethod
		+ (FmxNGFortranGenerator>>#subProgramComment) asLGCreateMethod
		+ (FmxNGFortranGenerator>>#subRoutineComment) asLGCreateMethod
		+ (FmxNGFortranGenerator>>#usageComment) asLGCreateMethod
		+ (FmxNGFortranGenerator>>#moduleComment) asLGCreateMethod thenShowIt) ,
	(FmxNGFortranGenerator >> #defineTraits) asLGCreateMethod thenShowIt ,
	(FmxNGFortranGenerator >> #defineHierarchy) asLGCreateMethod thenShowIt ,
	(FmxNGFortranGenerator >> #defineRelations) asLGCreateMethod thenShowIt
]

{ #category : #building }
FmxFortranScenarioBuilder class >> buildScenarioAndSaveInFile: anObject [
	anObject asFileReference
		writeStreamDo: [ :s | anObject storeOn: s ].
]
