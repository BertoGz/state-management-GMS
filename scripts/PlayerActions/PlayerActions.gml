// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
globalvar PLAYER_STATE_SET_LIFE;
PLAYER_STATE_SET_HEALTH = "PLAYER_STATE_SET_LIFE"
globalvar PLAYER_STATE_SET_ALIVE;
PLAYER_STATE_SET_ALIVE = "PLAYER_STATE_SET_ALIVE"

function setLife(payload){
	return {action:PLAYER_STATE_SET_LIFE, payload:payload}
}
function setAlive(payload){
	return {action:PLAYER_STATE_SET_ALIVE, payload:payload}
}

