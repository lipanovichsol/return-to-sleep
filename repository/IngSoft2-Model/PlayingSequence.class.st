"
This is a Playing Sequence. It has the order of the turns of the different players. It knows the current player and knows to change to the next player.
"
Class {
	#name : #PlayingSequence,
	#superclass : #Object,
	#instVars : [
		'players',
		'turnIndex',
		'inOrder'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #Creating }
PlayingSequence class >> withAllPlayers: anArrayOfPlayers. [
	^self new initializeWithAllPlayers: anArrayOfPlayers 
]

{ #category : #Accesing }
PlayingSequence >> changeOrder [
	inOrder := inOrder not. 
]

{ #category : #Accesing }
PlayingSequence >> changeToNextPlayer [

	(turnIndex < players size) 
	ifTrue: 	
	[
			(inOrder)
			ifTrue:		[turnIndex := turnIndex + 1]
			ifFalse:    [  
			 (turnIndex > 1) ifTrue: [turnIndex := turnIndex -1] ifFalse: [turnIndex := players size ].]     ]
	ifFalse: 
	[
		(inOrder)
		ifTrue: 	[ turnIndex := 1 ]
		ifFalse: [  turnIndex := turnIndex -1]
	] 
		
	
]

{ #category : #Accesing }
PlayingSequence >> currentPlayer [
	^players at: turnIndex.
]

{ #category : #Initializing }
PlayingSequence >> initializeWithAllPlayers: anOrderedCollectionOfPlayers [
	players := anOrderedCollectionOfPlayers.
	turnIndex := 1.
	inOrder := true. 
]

{ #category : #Accesing }
PlayingSequence >> repeatTurn [
	inOrder := inOrder not.
	self changeToNextPlayer.
	inOrder := inOrder not. 
]

{ #category : #accesing }
PlayingSequence >> skipPlayer [
	self changeToNextPlayer.
]
