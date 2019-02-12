"
This card is a Double card. It makes the current player's turn double.  Its type is instant.
"
Class {
	#name : #Double,
	#superclass : #Card,
	#instVars : [
		'value'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #Creating }
Double class >> withValue [
	^ self new initializeWithValue. 
]

{ #category : #Accesing }
Double >> applyEffectTo: aPlayingSequence [ 
	aPlayingSequence repeatTurn.
]

{ #category : #Initializing }
Double >> initializeWithValue [
	value := 0. 
]
