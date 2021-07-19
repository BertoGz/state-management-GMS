// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more 
///TEXT FOR FONT








function createDialogueBox(_dialogues){
	with instance_create_depth(0,0,-99,obj_dialogueBox){
		dialogues=_dialogues
	}
}
function closeDialogueBox(){
	with (instance_find(obj_dialogueBox,0)){
		instance_destroy()	
	}
}

