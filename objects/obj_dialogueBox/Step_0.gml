/// @description Insert description here
// You can write your code in this editor
var stateUpdate = !objectPropsSame(prevGameReducerState,GameReducerState)
if (currentDialogue!=false){
	
	handleInputDialogue()
}

if (stateUpdate && GameReducerState.talkInstance!=false){
	
	currentDialogue=GameReducerState.talkInstance;
	initDialog()
} 

if (stateUpdate){
	prevGameReducerState = GameReducerState
}