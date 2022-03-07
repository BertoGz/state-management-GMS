/// @description Insert description here
// You can write your code in this editor
name=""
sprite_index=spr_editor_npc
imgIndex=0
imageAngle=random(360)
state=states.normal
talkInstance = noone
selfPointer = id
function handleTalk(){
	if (distance_to_object(Player)<9 && GameReducerState.talkInstance=false){
		printToScreen(labels.talkTo)
	
		if (keyboard_check_pressed(INPUT_F)){
			dispatchGameReducer(onTalkAction(talkInstance))
		}
	}
		
}


