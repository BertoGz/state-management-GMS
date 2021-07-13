/// @description Insert description here
// You can write your code in this editor


containerDimensions= {width:GUI_WIDTH/2,height: GUI_HEIGHT/4}
containerColor=c_white;
speakerContaineDimensions={width:69,height:69}
dialogues=[];
dialogueIndex=0; // the current text to be shown in the dialogue array
dialogueSurface = surface_create(containerDimensions.width,containerDimensions.height)
padding = 10 // used to keep elements away from corners
//// local
currentDialogue = {}
dialogueType = "null"
currInputSelection=0;
alarm[0]=1

function handleInputSelection(){
	
	if (keyboard_check_released(INPUT_DOWN)){
		currInputSelection++;	
	}
	if (keyboard_check_released(INPUT_UP)){
		currInputSelection--;
	}
}


function drawContainer(){
	draw_set_color(make_color_rgb(9,28,90))
	draw_rectangle(0,0,containerDimensions.width,containerDimensions.height,0)	
}

function drawSpeakerContainer(){
	var isPlayerSpeaking=false; 
	if(variable_struct_exists(currentDialogue, "from"))
	{
		if (currentDialogue.from ="main")
		{isPlayerSpeaking = true}
	} 
	if(dialogueType="input"){
	isPlayerSpeaking = true
	}
	

	draw_set_color(make_color_rgb(39,61,127))
	draw_rectangle(0,0,speakerContaineDimensions.width,speakerContaineDimensions.height,0)	
	draw_sprite_ext(spr_avatar_npc,0,sprite_get_width(spr_avatar_npc)/2+(padding/2),0+(padding/2),isPlayerSpeaking ? 1 : -1,1,0,isPlayerSpeaking ? c_lime : c_white,1)
}

function drawText(){

	if (dialogueType = "text"){
	xPos=speakerContaineDimensions.width; // starting position
	yPos=0;
		
	var str =currentDialogue.text // we get the string from dialogues array

	var stringHeight = string_height(str)

	var CUT_OFF_LENGTH = 194;
	
	var formattedText = string_copy(str,0,CUT_OFF_LENGTH)
	if (string_length(formattedText)>=CUT_OFF_LENGTH){
		formattedText = formattedText+"..."
	}

	draw_set_halign(fa_left)
	draw_set_font(bitmapFont)
	draw_set_color(c_white)
	draw_text_ext(xPos+padding,yPos+padding,formattedText,stringHeight,containerDimensions.width-padding-speakerContaineDimensions.width)
	drawContinueText()
	}
}
function drawOptions(){
	if (dialogueType = "input"){
	handleInputSelection()
	xPos=speakerContaineDimensions.width + padding; // starting position
	yPos=0+padding;
	
	var options = currentDialogue.options
	var stringHeight = string_height(options[0])
	draw_set_halign(fa_left)
	draw_set_font(bitmapFont)
	draw_set_color(c_white)
	draw_sprite(spr_arrow_select,0,xPos,yPos+8+(16*currInputSelection))
	
	for (i=0;i<array_length(options);i++){
		draw_text_ext(xPos+16,yPos+(i*16),options[i],stringHeight,containerDimensions.width-padding-speakerContaineDimensions.width)
	}
		drawContinueText()
	}
}
function drawContinueText(){
	draw_set_color(c_red)
	draw_set_halign(fa_right)
	var label=""
	if (dialogueType="text"){
	label = "F TO CONTINUE"	
	} else {label = "PICK AN OPTION"}
	
	draw_text_ext(containerDimensions.width-padding,containerDimensions.height-padding-8,label,8,130)
}


function getDialogueType(){
 return variable_struct_exists(currentDialogue, "text") ? "text" : "input"
 }

function handleGotoNextDialogue(){
	if (keyboard_check_released(INPUT_F)){
		if (dialogueIndex < array_length(dialogues)-1 )
		{
			dialogueIndex++;
			currentDialogue = dialogues[dialogueIndex] 
			dialogueType = getDialogueType()
		}
	}
}

