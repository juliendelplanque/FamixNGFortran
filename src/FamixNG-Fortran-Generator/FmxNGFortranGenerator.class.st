Class {
	#name : #FmxNGFortranGenerator,
	#superclass : #FamixFileBasedLanguageGenerator,
	#instVars : [
		'module',
		'program',
		'subProgram',
		'variable',
		'body',
		'function',
		'subRoutine',
		'parameter',
		'access',
		'invocation',
		'tWithBody',
		'include',
		'usage',
		'tStaticInvocable',
		'tStaticInvocation',
		'tWithStaticInvocations'
	],
	#category : #'FamixNG-Fortran-Generator'
}

{ #category : #generating }
FmxNGFortranGenerator class >> generate [
	<script>
	^ super generate 
]

{ #category : #accessing }
FmxNGFortranGenerator class >> packageName [
	^ 'FamixNG-Fortran'
]

{ #category : #accessing }
FmxNGFortranGenerator class >> prefix [
	^ 'FmxFortran'
]

{ #category : #comments }
FmxNGFortranGenerator >> accessComment [
	^ 'I model the access to a variable in a Fortran program.'
]

{ #category : #comments }
FmxNGFortranGenerator >> bodyComment [
	^ 'I model the body of an entity in Fortran. I store accesses to variable and invocations made by my container.

3 kinds of entities can have a body:
- Programs
- Functions
- Subroutines'
]

{ #category : #definition }
FmxNGFortranGenerator >> defineClasses [
	super defineClasses.
	"Entities from Fortran's meta-model."
	module := builder newClassNamed: #Module comment: self moduleComment.
	program := builder newClassNamed: #Program comment: self programComment.
	subProgram := builder newClassNamed: #SubProgram comment: self subProgramComment.
	variable := builder newClassNamed: #Variable comment: self variableComment.
	body := builder newClassNamed: #Body comment: self bodyComment.
	function := builder newClassNamed: #Function comment: self functionComment.
	subRoutine := builder newClassNamed: #Subroutine comment: self subRoutineComment.
	parameter := builder newClassNamed: #Parameter comment: self parameterComment.
	
	"Links between entities are reified."
	access := builder newClassNamed: #Access comment: self accessComment.
	invocation := builder newClassNamed: #Invocation comment: self invocationComment.
	include := builder newClassNamed: #Include comment: self includeComment.
	usage := builder newClassNamed: #Usage comment: self usageComment.
]

{ #category : #definition }
FmxNGFortranGenerator >> defineHierarchy [
	super defineHierarchy.
	
	file --|> #TWithFileInclude.
	
	module --|> namedEntity.
	module --|> #TModule.
	module --|> #TWithFiles.
	module --|> #TWithLocalVariables.
	
	program --|> namedEntity.
	program --|> tWithBody.
	program --|> #TWithFiles.
	program --|> #TWithLocalVariables.
	
	subProgram --|> namedEntity.
	subProgram --|> tWithBody.
	subProgram --|> tStaticInvocable.
	subProgram --|> #TDefinedInModule.
	subProgram --|> #TWithParameters.
	subProgram --|> #TWithLocalVariables.
	subProgram --|> #TWithFiles.
	subProgram --|> #TWithLocalVariables.
	
	function --|> subProgram.
	subRoutine --|> subProgram.
	
	body --|> entity.
	body --|> tWithStaticInvocations.
	body --|> #TWithAccesses.
	
	parameter --|> namedEntity.
	parameter --|> #TParameter.
	parameter --|> #TAccessible.
	
	variable --|> namedEntity.
	variable --|> #TLocalVariable.
	variable --|> #TAccessible.
	
	
	"Reified links between entities will usually inherit from association."
	include --|> association.
	include --|> #TFileInclude.
	
	access --|> association.
	access --|> #TAccess.
	
	invocation --|> association.
	invocation --|> tStaticInvocation.
	
	usage --|> association.
]

{ #category : #definition }
FmxNGFortranGenerator >> defineRelations [
	"Implement module's usage mechanism."
	(module property: #incomingUsageRelations)
		-* (usage property: #target).
		
	(module property: #outgoingUsageRelations)
		-* (usage property: #source).
	
	(program property: #outgoingUsageRelations)
		-* (usage property: #source).
		
	"Implements the fact that an entity with a body has a body."
	(tWithBody property: #body)
		<>- (body property: #container).
	
	"Implements relations related to static invocation,"
	(tStaticInvocable property: #incomingStaticInvocations)
		-* (tStaticInvocation property: #target).
		
	(tWithStaticInvocations property: #outgoingStaticInvocations)
		-* (tStaticInvocation property: #caller)
]

{ #category : #definition }
FmxNGFortranGenerator >> defineTraits [
	super defineTraits.
	tWithBody := builder newTraitNamed: #TWithBody.
	
	"By default, the basic infrastructure of Famix-NG implements 'dynamic' invocation.
	 Here, we implement 'static' invocation using so it can be extracted for re-use later."
	tStaticInvocable := builder newTraitNamed: #TStaticInvocable.
	tStaticInvocation := builder newTraitNamed: #TStaticInvocation.
	tWithStaticInvocations := builder newTraitNamed: #TWithStaticInvocations.
]

{ #category : #comments }
FmxNGFortranGenerator >> functionComment [
	^ 'I model a function in Fortran.

I have multiple parameters and a body.'
]

{ #category : #comments }
FmxNGFortranGenerator >> includeComment [
	^ 'I model the inclusion of a file in a Fortran file.'
]

{ #category : #comments }
FmxNGFortranGenerator >> invocationComment [
	^ 'I model an (static) invocation in Fortran.'
]

{ #category : #comments }
FmxNGFortranGenerator >> moduleComment [
	^ 'I model a Fortran module.

A module is a group of functions and subroutines. It can also declare variables.'
]

{ #category : #comments }
FmxNGFortranGenerator >> parameterComment [
	^ 'I model a Fortran parameter.

To kind of entities can hold parameters:
- Functions
- Subroutines'
]

{ #category : #comments }
FmxNGFortranGenerator >> programComment [
	^ 'I model a program in Fortran.

I am the entrypoint when Fortran code is executed.'
]

{ #category : #comments }
FmxNGFortranGenerator >> subProgramComment [
	^ 'I model an abstract sub-program in Fortran.

I hold a body and can be invoked.'
]

{ #category : #comments }
FmxNGFortranGenerator >> subRoutineComment [
	^ 'I model a sub-routine in Fortran.

I have multiple parameters and a body.'
]

{ #category : #comments }
FmxNGFortranGenerator >> usageComment [
	^ 'I model the fact that a Fortran module or program uses another Fortran module.'
]

{ #category : #comments }
FmxNGFortranGenerator >> variableComment [
	^ 'I model a Fortran variable.

There are 4 kind of entities in Fortran''s meta-model that can hold variables:
- Modules
- Programs
- Functions
- Subroutine'
]
