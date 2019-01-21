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

{ #category : #definition }
FmxNGFortranGenerator >> defineClasses [
	super defineClasses.
	"Entities from Fortran's meta-model."
	module := builder newClassNamed: #Module.
	program := builder newClassNamed: #Program.
	subProgram := builder newClassNamed: #SubProgram.
	variable := builder newClassNamed: #Variable.
	body := builder newClassNamed: #Body.
	function := builder newClassNamed: #Function.
	subRoutine := builder newClassNamed: #Subroutine.
	parameter := builder newClassNamed: #Parameter.
	
	"Links between entities are reified."
	access := builder newClassNamed: #Access.
	invocation := builder newClassNamed: #Invocation.
	include := builder newClassNamed: #Include.
	usage := builder newClassNamed: #Usage
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
	(tWithBody property: #body)
		<>- (body property: #container).
		
	(module property: #incomingUsageRelations)
		-* (usage property: #target).
		
	(module property: #outgoingUsageRelations)
		-* (usage property: #source).
		
	(program property: #outgoingUsageRelations)
		-* (usage property: #source).
		
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
