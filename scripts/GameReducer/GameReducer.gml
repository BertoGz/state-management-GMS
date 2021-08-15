// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
globalvar GameReducerState;
GameReducerState={
	solvedPuzzle:false	
}

function dispatchGameReducer(event){
	var action = event.action;
	var payload = event.payload;
	
	switch(action){
	case GAME_STATE_SET_SOLVED_PUZZLE:
		GameReducerState = combineStruct(GameReducerState,{solvedPuzzle:event.payload})
	break;
		
		
	}
	print(GameReducerState)
}