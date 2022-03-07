/// @description Insert description here
// You can write your code in this editor
dialogue_container_xOff = GUI_WIDTH/4
dialogue_container_yOff = GUI_HEIGHT/4
dialogue_container= {x1:dialogue_container_xOff,y1:dialogue_container_yOff,x2:GUI_WIDTH-dialogue_container_xOff,y2:GUI_HEIGHT-dialogue_container_yOff}
dialogue_container_width = dialogue_container.x2-dialogue_container.x1
dialogue_container_color=make_color_rgb(135,68,142)

speaker_container_width = GUI_WIDTH/4
speaker_container_dimensions={x1:0,y1:0,x2:speaker_container_width,y2:GUI_HEIGHT}
speaker_container_color = make_color_rgb(135,68,142)

container_alpha = .6
currentDialogue = false
currInputSelection=0;
dialogueSurface = noone
padding = 10*2 // used to keep elements away from corners
//// local
CUT_OFF_LENGTH = 194;
prevGameReducerState = GameReducerState
//mainPlayer.state=states.speaking
func = false
function initDialog(){
	currInputSelection=0;
}

function handleMovePicker(){
	var options = currentDialogue.options
	if (keyboard_check_released(INPUT_DOWN)){
		if currInputSelection<array_length(options)-1 {currInputSelection++}	
	}
	if (keyboard_check_released(INPUT_UP)){
			if currInputSelection>0 {currInputSelection--}
	}
}

function onGotoNextDialogue(){
	if (variable_struct_exists(currentDialogue,"next")){
			currentDialogue = currentDialogue.next
	} else {	
		dispatchGameReducer(onTalkEndAction())
		currentDialogue = false
		currInputSelection=0;
	}
}
function handleInputDialogue(){
	if (keyboard_check_pressed(INPUT_F) ){
		if ( variable_struct_exists(currentDialogue,"type")){
			if (currentDialogue.type="text" )
			
		{
			onGotoNextDialogue()
		} else {
			if (variable_struct_exists(currentDialogue, "results")){
			func = {idObject:currentDialogue.idObject,f: currentDialogue.results[currInputSelection]}
			
			onGotoNextDialogue() // clears the dialog
			alarm[0]=1
		}} }
	}
}

function drawDialogueContainer(){
	draw_set_alpha(container_alpha)
	draw_set_color(dialogue_container_color)
	// top
	draw_rectangle(dialogue_container.x1,0,dialogue_container.x2,0+dialogue_container_yOff,0)	
	//bottom
	draw_rectangle(dialogue_container.x1,GUI_HEIGHT-dialogue_container_yOff,dialogue_container.x2,GUI_HEIGHT,0)	
	// dialog box
	draw_set_color(c_blue)
	draw_rectangle(dialogue_container.x1,dialogue_container.y1,dialogue_container.x2,dialogue_container.y2,0)	
	draw_set_alpha(1)
}

function drawSpeakerContainer(){
	var isPlayerSpeaking=false; 
	if(variable_struct_exists(currentDialogue, "from"))
	{
		if (currentDialogue.from ="main")
		{isPlayerSpeaking = true}
	} 
	draw_set_alpha(container_alpha)
	draw_set_color(speaker_container_color)
	// p1 box
	draw_rectangle(speaker_container_dimensions.x1,speaker_container_dimensions.y1,speaker_container_dimensions.x2,speaker_container_dimensions.y2,0)	
	// p2 box
	draw_rectangle(GUI_WIDTH-speaker_container_width,speaker_container_dimensions.y1,GUI_WIDTH,speaker_container_dimensions.y2,0)	
	draw_set_alpha(1)
	draw_sprite_ext(spr_character,0,isPlayerSpeaking ? 0 : GUI_WIDTH,0,isPlayerSpeaking ? 1 : -1,1,0,isPlayerSpeaking ? c_white : c_white,1)
}

function drawText(){
	if (currentDialogue.type = "text"){

		
	var str =currentDialogue.text // we get the string from dialogues array

	var stringHeight = string_height(str)


	var formattedText = string_copy(str,0,CUT_OFF_LENGTH)
	if (string_length(formattedText)>=CUT_OFF_LENGTH){
		formattedText = formattedText+"..."
	}

	draw_set_halign(fa_left)
	draw_set_font(bitmapFont)
	draw_set_color(c_white)
	draw_text_ext_transformed(dialogue_container.x1+padding,dialogue_container.y1+padding,formattedText,stringHeight,dialogue_container.x2-dialogue_container.x1-padding-padding,1,1,0)
	}
}
function drawOptions(){
	if (currentDialogue.type = "input"){
	handleMovePicker()
	xPos = dialogue_container_width + padding; // starting position
	yPos=0+padding;
	var str = currentDialogue.text
	var formattedText = string_copy(str,0,CUT_OFF_LENGTH)
	if (string_length(formattedText)>=CUT_OFF_LENGTH){
		formattedText = formattedText+"..."
	}
	var options = currentDialogue.options
	draw_set_font(bitmapFont)
	var stringHeight = string_height(formattedText)
	var stringTotalHeight = string_height_ext(formattedText, stringHeight, dialogue_container_width-padding)

	draw_set_halign(fa_left)

	draw_set_color(c_white)
	draw_sprite(spr_arrow_select,0,xPos,yPos+stringTotalHeight+8+(16*currInputSelection))
	
	draw_text_ext_transformed(xPos,yPos,formattedText,stringHeight,dialogue_container_width-padding,1,1,0)
	for (i=0;i<array_length(options);i++){
		draw_text_ext_transformed(xPos+16,yPos+stringTotalHeight+(i*16),options[i],stringHeight,dialogue_container_width,1,1,0)
	}
		drawContinueText()
	}
}
function drawContinueText(){
	draw_set_color(c_red)
	draw_set_halign(fa_right)
	draw_set_font(bitmapFont)
	var label=""
	if (currentDialogue.type="text"){
	label = labels.fToContinue
	} else {label = labels.fToSelect}
	//draw_text_ext(containerDimensions.width-padding,containerDimensions.height-padding-8,label,8,130)
	draw_text_ext_transformed(dialogue_container_width-padding,dialogue_container.y2,label,8*1,130*2,1,1,0)
}

