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
				package: 'FamixNG-Fortran-ScenarioBuilder' with: [ spec requires: #('FamixNG-Fortran-Generator') ];
				package: 'FamixNG-Fortran' ]
]
