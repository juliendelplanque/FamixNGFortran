Class {
	#name : #FmxFortranTutorial,
	#superclass : #Object,
	#category : #'FamixNG-Fortran-Generator-Tutorial'
}

{ #category : #'class initialization' }
FmxFortranTutorial class >> initialize [
	self open
]

{ #category : #'class initialization' }
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
