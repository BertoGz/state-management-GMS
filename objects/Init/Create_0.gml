




//Set WindowSizes
globalvar gameCamera;
display_set_gui_size(GUI_WIDTH,GUI_HEIGHT)
view_camera[0] = camera_create_view(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
gameCamera=view_camera[0]
surface_resize(application_surface, SCREEN_WIDTH, SCREEN_HEIGHT);
window_set_size(SCREEN_WIDTH, SCREEN_HEIGHT);


application_surface_draw_enable(false)


showDialogueBox("HELLO I HAVE A TASK FOR YOU ARE YOU UP FOR IT, IF SO GO"+ 
" TO HAROLD NEAR THE BRIDGE AND ASK TO JOIN THE FIGHTERS GUILD HE WILL GUIDE YOU TO YOUR NEXT"+
" LOCATION TO STUDY MATH AND SCIENCE AS WELL AS MANY OTHER CLASSES DOING THOSE CLASSES WILL GRANT"
+" YOU ACCESS TO GOTO THE SECRET DUNGEON IN FALADOR")
