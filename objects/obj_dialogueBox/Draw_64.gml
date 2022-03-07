/// @description Insert description here
// You can write your code in this editor
if !surface_exists(dialogueSurface){
	dialogueSurface = surface_create(GUI_WIDTH*2,GUI_HEIGHT*2)
	
}

if (currentDialogue!=false)
{
if (surface_exists(dialogueSurface)){
surface_set_target(dialogueSurface)
drawDialogueContainer()
drawSpeakerContainer()
drawText()
drawOptions()

surface_reset_target()

draw_surface_ext(dialogueSurface,0,0,1,1,0,c_white,1)
}
}