extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	#play the menu theme
	$Music.play()
	$colorrect_fade.set_color(Color(0, 0, 0, 0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func PrepBattle():
	pass
	#clear screen
	#load in enemies
	#load in player
	#load in deck

func PrepShop():
	pass
	#clear screen
	#load in shop
	#load in inventory

func BackToMap():
	pass
	#tell map to get ready (throw signal)
	#change_scene_to_file(scn_map.tscn)

# called whenever a player presses a menu button - crash sfx, then end music, then fade to black (to fade in next screen)
func stop_music_fade_out():
	$SFX.play()
	$Music.stop()
	$AnimationPlayer.play("fade_to_black")

func _on_btn_new_game_pressed():
	stop_music_fade_out()
	await get_tree().create_timer(2.0).timeout
	get_tree().change_scene_to_file("res://scn_event.tscn")


func _on_btn_load_game_pressed():
	stop_music_fade_out()


func _on_btn_quit_pressed():
	stop_music_fade_out()
	$tmr_quit.start()


func _on_quit_timeout():
	#exit the game
	get_tree().quit()
