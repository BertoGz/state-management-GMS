




//Set WindowSizes
globalvar gameCamera;
display_set_gui_size(SCREEN_HEIGHT,SCREEN_HEIGHT)
view_camera[0] = camera_create_view(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
gameCamera=view_camera[0]
surface_resize(application_surface, SCREEN_WIDTH, SCREEN_HEIGHT);
window_set_size(SCREEN_WIDTH, SCREEN_HEIGHT);




//testing


