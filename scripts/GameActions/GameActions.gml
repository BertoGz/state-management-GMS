// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
globalvar GAME_STATE_SET_SOLVED_PUZZLE;
GAME_STATE_SET_SOLVED_PUZZLE = "GAME_STATE_SET_SOLVED_PUZZLE";



function setSolvedPuzzle(payload){
	return {action:GAME_STATE_SET_SOLVED_PUZZLE,payload:payload}	
}