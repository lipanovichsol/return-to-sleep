"
This card is a Reverse card. It changes the order of the playingSequence.  Its type is instant.
"
Class {
	#name : #Reverse,
	#superclass : #Card,
	#instVars : [
		'value'
	],
	#classInstVars : [
		'value'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #Creating }
Reverse class >> withValue [
	^ self new initializeWithValue. 
]

{ #category : #Accesing }
Reverse >> applyEffectTo: aPlayingSequence [ 
	aPlayingSequence changeOrder. 
]

{ #category : #Initializing }
Reverse >> initializeWithValue [
	value := 0
]

{ #category : #Initializing }
Reverse >> value [
	^ value.
]
