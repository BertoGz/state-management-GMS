// gui and camera
display_set_gui_size(GUI_WIDTH,GUI_HEIGHT)

view_camera[0] = camera_create_view(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
//Set WindowSizes
surface_resize(application_surface,GUI_WIDTH*2,GUI_HEIGHT*2)
window_set_size(SCREEN_WIDTH, SCREEN_HEIGHT);
application_surface_draw_enable(false)

//Camera define
globalvar gameCamera;
gameCamera=view_camera[0]
globalvar mainPlayer;

// player Define
mainPlayer = instance_find(Player,0)


//instances
instance_create_depth(0,0,0,screen_text)
instance_create_depth(0,0,0,obj_dialogueBox)

///


 