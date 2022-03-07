/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("1"))){
	window_set_fullscreen(true)
}

if (keyboard_check_pressed(ord("R"))){
	game_restart()
}

if (keyboard_check_pressed(ord("O"))){
	game_end()
}