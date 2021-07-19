/// @description Insert description here
// You can write your code in this editor
name=""
sprite_index=spr_editor_npc
imgIndex=0
imageAngle=random(360)



function handleTalk(){
	
	if (distance_to_object(Player)<9){
		printToScreen(labels.talkTo)
	}
	
	if (keyboard_check_released(INPUT_F)){
		onSpeak()
	}
		
}

function nullFunction(){}
onSpeak = nullFunction()
