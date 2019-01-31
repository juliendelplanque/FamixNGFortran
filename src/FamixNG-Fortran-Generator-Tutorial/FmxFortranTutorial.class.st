Class {
	#name : #FmxFortranTutorial,
	#superclass : #Object,
	#category : #'FamixNG-Fortran-Generator-Tutorial'
}

{ #category : #opening }
FmxFortranTutorial class >> open [
	LGScenaristPresenter new
		openWithSpec;
		adaptToLGScenarist: (LGScenarist read: self scenario)
]

{ #category : #accessing }
FmxFortranTutorial class >> scenario [
	^ (FmxFortranGitBridge sourceDirectory / '..' / 'scenario.ston') readStreamDo: [ :s |
	STON fromStream: s ]
]
