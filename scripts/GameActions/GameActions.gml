// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
globalvar GAME_STATE_SET_SOLVED_PUZZLE;
GAME_STATE_SET_SOLVED_PUZZLE = "GAME_STATE_SET_SOLVED_PUZZLE";
globalvar ON_TALK_ACTION;
ON_TALK_ACTION = "ON_TALK_ACTION";
globalvar ON_TALK_END_ACTION;
ON_TALK_END_ACTION = "ON_TALK_END_ACTION";


function setSolvedPuzzle(payload){
	return {action:GAME_STATE_SET_SOLVED_PUZZLE,payload:payload}	
}

// input: talkInstance object which will contain all the possible dialogs and choices
function onTalkAction(talkInstance){
	return {action:ON_TALK_ACTION,payload:talkInstance}	
}
// clears talkInstance
function onTalkEndAction(){
	return {action:ON_TALK_END_ACTION,payload:noone}	
}