"
This card is a Skip card. It skips the current player's turn.  Its type is instant.
"
Class {
	#name : #Skip,
	#superclass : #Card,
	#instVars : [
		'value'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #Creating }
Skip class >> withValue [
	^ self new initializeWithValue. 
]

{ #category : #Accesing }
Skip >> applyEffectTo: aPlayingSequence [ 
	aPlayingSequence skipPlayer. 
]

{ #category : #Initializing }
Skip >> initializeWithValue [
	value := 0.
]
