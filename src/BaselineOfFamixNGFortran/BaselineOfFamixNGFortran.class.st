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
   				with: [ spec repository: 'github://juliendelplanque/LectureGuide/src' ] ]
]
