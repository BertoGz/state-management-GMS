 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
globalvar GameReducerState;
GameReducerState={
	solvedPuzzle:false,	
	talkInstance: false,
}
function updateState(state){
return combineStruct(GameReducerState,state)	
}
function dispatchGameReducer(event){
	var action = event.action;
	var payload = event.payload;

	switch(action){
	case GAME_STATE_SET_SOLVED_PUZZLE:
		GameReducerState = updateState({solvedPuzzle:event.payload})
	break;
	case ON_TALK_ACTION:
	print(event)
	GameReducerState = updateState({talkInstance:event.payload})
	break;
	case ON_TALK_END_ACTION:
	GameReducerState = updateState({talkInstance: false})
	break;
	}
	print(GameReducerState)
}