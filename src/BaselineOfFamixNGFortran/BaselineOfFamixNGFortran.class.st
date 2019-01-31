Class {
	#name : #BaselineOfFamixNGFortran,
	#superclass : #BaselineOf,
	#category : #BaselineOfFamixNGFortran
}

{ #category : #baselines }
BaselineOfFamixNGFortran >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ "Packages"
			spec
				postLoadDoIt: #'postload:package:'.
			spec
				package: 'FamixNG-Fortran-Generator';
				package: 'FamixNG-Fortran-Tests' with: [ spec requires: #('FamixNG-Fortran') ];
				package: 'FamixNG-Fortran-ScenarioBuilder' with: [ spec requires: #('FamixNG-Fortran-Generator' 'LectureGuide') ];
				package: 'FamixNG-Fortran';
				package: 'FamixNG-Fortran-Generator-Tutorial' with: [ spec requires: #('GitBridge' 'LectureGuide') ].
			spec
   				baseline: 'GitBridge'
   				with: [ spec repository: 'github://jecisc/GitBridge/src' ].
			spec
   				baseline: 'LectureGuide'
   				with: [ spec repository: 'github://juliendelplanque/LectureGuide/src' ].
			spec
        		group: 'Generator' with: #('FamixNG-Fortran-Generator');
				group: 'Core' with: #('FamixNG-Fortran' 'FamixNG-Fortran-Tests');
				group: 'ScenarioBuilder' with: #('FamixNG-Fortran-ScenarioBuilder');
				group: 'Tutorial' with: #('FamixNG-Fortran-Generator-Tutorial');
				group: 'default' with: #('Core') ]
]

{ #category : #actions }
BaselineOfFamixNGFortran >> postload: loader package: packageSpec [
	self class environment
		at: #LGScenaristPresenter ifPresent: [ 
			self class environment classNamed: #FmxFortranTutorial ifPresent: #open ]
]
