// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more 
///TEXT FOR FONT
globalvar map_string;
map_string = " !\"#$%&'()*+,_./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ"

globalvar bitmapFont;
bitmapFont = font_add_sprite_ext(spr_font,map_string,false,0)








function showDialogueBox(_str){

	with instance_create_depth(0,0,-99,obj_dialogueBox){
		containerColor=c_blue
		dialogues=["HELLO I HAVE A TASK FOR YOU ARE YOU UP FOR IT"]
		str=_str
	}

}


