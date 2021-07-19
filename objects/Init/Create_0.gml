




//Set WindowSizes
globalvar gameCamera
globalvar mainPlayer;
mainPlayer = instance_find(Player,0)
display_set_gui_size(GUI_WIDTH,GUI_HEIGHT)
view_camera[0] = camera_create_view(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
gameCamera=view_camera[0]
surface_resize(application_surface, SCREEN_WIDTH*2, SCREEN_HEIGHT*2);
window_set_size(SCREEN_WIDTH*2, SCREEN_HEIGHT*2);
screenText = "" /// this screen is printed to gui

application_surface_draw_enable(false)

npc={name:"julio"}

dialoguess = [
{text:"Hello I have a task for you. Are you up for it?", from:npc.name},
{text:"Yes I am so down for it.", from:"main"},
{text:"Good. I want you to go near the bridge and ask to join the fighters guild",from:npc.name},
{text:"From there he will guid you to your next location.",from:npc.name},
{text:"Study math and science so you can be one step above everybody else.",from:npc.name}]



// choose text Type : Dialogue, Option

// if (textType === Option)

// setOptions, setOptionMode = true

function option1(){
	show_debug_message("HELLO I WELCOME YOU")
}
function option2(){
	show_debug_message("LEAVE THEN!")
}







/*
"HELLO I HAVE A TASK FOR YOU ARE YOU UP FOR IT, IF SO GO"+ 
" TO HAROLD NEAR THE BRIDGE AND ASK TO JOIN THE FIGHTERS GUILD HE WILL GUIDE YOU TO YOUR NEXT"+
" LOCATION TO STUDY MATH AND SCIENCE AS WELL AS MANY OTHER CLASSES DOING THOSE CLASSES WILL GRANT"
+" YOU ACCESS TO GOTO THE SECRET DUNGEON IN FALADOR")
*/


function drawActionLabelsToGui(){
	if (screenText!="")
	{
		draw_set_halign(fa_center)
		draw_set_color(c_white)
		draw_set_font(bitmapFont)
		draw_text(GUI_WIDTH/2,GUI_HEIGHT-GUI_HEIGHT/4,screenText)	}
	screenText=""
}

