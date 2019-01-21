Class {
	#name : #FmxNGFortranMetaModelTest,
	#superclass : #TestCase,
	#category : #'FamixNGFortran-Tests'
}

{ #category : #tests }
FmxNGFortranMetaModelTest >> testEntityWithVariable: entity [
	| var1 var2 |
	
	var1 := FmxFortranVariable new
				name: 'var1';
				yourself.
	
	var2 := FmxFortranVariable new
				name: 'var2';
				yourself.
	
	self assert: var1 parentBehaviouralEntity isNil.
	self assert: entity localVariables isEmpty.
	
	var1
		parentBehaviouralEntity: entity.
	
	self assert: var1 parentBehaviouralEntity equals: entity.
	self assert: entity localVariables size equals: 1.
	self assertCollection: entity localVariables hasSameElements: { var1 }.
	
	self assert: var2 parentBehaviouralEntity isNil.
	
	var2
		parentBehaviouralEntity: entity.
		
	self assert: var2 parentBehaviouralEntity equals: entity.
	self assert: entity localVariables size equals: 2.
	self assertCollection: entity localVariables hasSameElements: { var1 . var2 }.
]

{ #category : #tests }
FmxNGFortranMetaModelTest >> testFile [
	| file fileIncluded |
	file := FmxFortranFile new
				name: 'module.f';
				yourself.
	fileIncluded := FmxFortranFile new
							name: 'included.f';
							yourself.
	
	self assert: fileIncluded incomingIncludeRelations size equals: 0.
	self assert: fileIncluded outgoingIncludeRelations size equals: 0.
	self assert: file incomingIncludeRelations size equals: 0.
	self assert: file outgoingIncludeRelations size equals: 0.
	
	FmxFortranInclude new
		source: file;
		target: fileIncluded;
		yourself.
		
	self assert: fileIncluded incomingIncludeRelations size equals: 1.
	self assert: fileIncluded outgoingIncludeRelations size equals: 0.
	self assert: file incomingIncludeRelations size equals: 0.
	self assert: file outgoingIncludeRelations size equals: 1.
]

{ #category : #tests }
FmxNGFortranMetaModelTest >> testFileWithModuleProgramAndSubProgram [
	| file module program function subRoutine |
	file := FmxFortranFile new
				name: 'file.f';
				yourself.
	module := FmxFortranModule new
					name: 'module';
					yourself.
	program := FmxFortranProgram new
					name: 'program';
					yourself.
	function := FmxFortranFunction new
					name: 'sqrt';
					yourself.
	subRoutine := FmxFortranSubroutine new
						name: 'computation';
						yourself.
	
	self assert: file entities size equals: 0.
	
	file
		addEntity: module;
		addEntity: program;
		addEntity: function;
		addEntity: subRoutine.
	
	self assert: file entities size equals: 4.
	self assertCollection: file entities hasSameElements: { module . program . function . subRoutine }.
		
	self assert: module containerFiles size equals: 1.
	self assert: (module containerFiles includes: file).
	self assert: program containerFiles size equals: 1.
	self assert: (program containerFiles includes: file).
	self assert: function containerFiles size equals: 1.
	self assert: (function containerFiles includes: file).
	self assert: subRoutine containerFiles size equals: 1.
	self assert: (subRoutine containerFiles includes: file).
]

{ #category : #tests }
FmxNGFortranMetaModelTest >> testFunctionWithVariables [
	| function |
	function := FmxFortranFunction new
					name: 'fct';
					yourself.
	
	self testEntityWithVariable: function
]

{ #category : #tests }
FmxNGFortranMetaModelTest >> testModuleAndUsage [
	| module usedModule |
	module := FmxFortranModule new
					name: 'module';
					yourself.
	usedModule := FmxFortranModule new
						name: 'usedModule';
						yourself.
						
	self assert: module incomingUsageRelations size equals: 0.
	self assert: module outgoingUsageRelations size equals: 0.
	self assert: usedModule incomingUsageRelations size equals: 0.
	self assert: usedModule outgoingUsageRelations size equals: 0.
	
	FmxFortranUsage new
		source: module;
		target: usedModule;
		yourself.
	
	self assert: module incomingUsageRelations size equals: 0.
	self assert: module outgoingUsageRelations size equals: 1.
	self assert: usedModule incomingUsageRelations size equals: 1.
	self assert: usedModule outgoingUsageRelations size equals: 0.
	
]

{ #category : #tests }
FmxNGFortranMetaModelTest >> testModuleAndUsageFromProgram [
	| usedModule  program |
	usedModule := FmxFortranModule new
					name: 'module';
					yourself.
	program := FmxFortranProgram new
						name: 'program';
						yourself.
						
	self assert: usedModule incomingUsageRelations size equals: 0.
	self assert: usedModule outgoingUsageRelations size equals: 0.
	self assert: program outgoingUsageRelations size equals: 0.
	
	FmxFortranUsage new
		source: program;
		target: usedModule;
		yourself.
	
	self assert: usedModule incomingUsageRelations size equals: 1.
	self assert: usedModule outgoingUsageRelations size equals: 0.
	self assert: program outgoingUsageRelations size equals: 1.
	
]

{ #category : #tests }
FmxNGFortranMetaModelTest >> testModuleWithVariables [
	| module |
	module := FmxFortranModule new
					name: 'module';
					yourself.
	
	self testEntityWithVariable: module
]

{ #category : #tests }
FmxNGFortranMetaModelTest >> testProgramWithVariables [
	| program |
	program := FmxFortranProgram new
					name: 'program';
					yourself.
	
	self testEntityWithVariable: program
]

{ #category : #tests }
FmxNGFortranMetaModelTest >> testSubroutineWithVariables [
	| subRoutine |
	subRoutine := FmxFortranSubroutine new
					name: 'subroutine';
					yourself.
	
	self testEntityWithVariable: subRoutine
]
