// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
globalvar PlayerReducerState;
PlayerReducerState={
	life:10,
	isAlive:false	
}

function dispatchPlayerReducer(event){
	var action = event.action;
	var payload = event.payload;
	
	switch(action){
	case PLAYER_STATE_SET_ALIVE:
		PlayerReducerState = combineStruct(PlayerReducerState,{isAlive:event.payload})
	break;
	case PLAYER_STATE_SET_LIFE:
		PlayerReducerState = combineStruct(PlayerReducerState,{life:event.payload})
	break;
	}
	print(PlayerReducerState)
}