/// @description Insert description here
// You can write your code in this editor
screenText = "" /// this screen is printed to gui
function drawActionLabelsToGui(){
	if (screenText!="")
	{
		draw_set_halign(fa_center)
		draw_set_color(c_white)
		draw_set_font(bitmapFont)
		draw_text(GUI_WIDTH/2,GUI_HEIGHT-GUI_HEIGHT/4,screenText)	}
	screenText=""
}
