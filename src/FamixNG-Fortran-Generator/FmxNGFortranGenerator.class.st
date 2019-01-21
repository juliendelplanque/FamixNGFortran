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
		'usage'
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
	^ 'FamixNGFortran'
]

{ #category : #accessing }
FmxNGFortranGenerator class >> prefix [
	^ 'FmxFortran'
]

{ #category : #definition }
FmxNGFortranGenerator >> defineClasses [
	super defineClasses.
	module := builder newClassNamed: #Module.
	program := builder newClassNamed: #Program.
	subProgram := builder newClassNamed: #SubProgram.
	variable := builder newClassNamed: #Variable.
	body := builder newClassNamed: #Body.
	function := builder newClassNamed: #Function.
	subRoutine := builder newClassNamed: #Subroutine.
	parameter := builder newClassNamed: #Parameter.
	access := builder newClassNamed: #Access.
	invocation := builder newClassNamed: #Invocation.
	
	include := builder newClassNamed: #Include.
	usage := builder newClassNamed: #Usage
]

{ #category : #definition }
FmxNGFortranGenerator >> defineHierarchy [
	super defineHierarchy.
	include --|> association.
	include --|> #TFileInclude.
	
	usage --|> association.
	
	file --|> #TWithFileInclude.
	
	module --|> namedEntity.
	module --|> #TWithFiles.
	module --|> #TWithLocalVariables.
	
	body --|> #TWithInvocations.
	body --|> #TWithAccesses.
	
	program --|> namedEntity.
	program --|> tWithBody.
	program --|> #TWithFiles.
	program --|> #TWithLocalVariables.
	
	subProgram --|> namedEntity.
	subProgram --|> tWithBody.
	subProgram --|> #TWithParameters.
	subProgram --|> #TWithLocalVariables.
	subProgram --|> #TWithFiles.
	subProgram --|> #TWithLocalVariables.
	subProgram --|> #TInvocable.
	
	function --|> subProgram.
	subRoutine --|> subProgram.
	
	access --|> association.
	access --|> #TAccess.
	
	invocation --|> association.
	invocation --|> #TInvocation.
	
	parameter --|> namedEntity.
	parameter --|> #TParameter.
	parameter --|> #TAccessible.
	
	variable --|> namedEntity.
	variable --|> #TLocalVariable.
	variable --|> #TAccessible
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
]

{ #category : #definition }
FmxNGFortranGenerator >> defineTraits [

	super defineTraits.
	
	tWithBody := builder newTraitNamed: #TWithBody
]
