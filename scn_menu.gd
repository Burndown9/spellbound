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


func _on_btn_new_game_pressed():
	#play crash effect
	$SFX.play()


func _on_btn_load_game_pressed():
	#play crash effect
	$SFX.play()


func _on_btn_quit_pressed():
	#play crash effect
	$SFX.play()
	#start the timer
	$tmr_quit.start()
	#begin fadeout
	$AnimationPlayer.play("fade_to_black")


func _on_quit_timeout():
	#exit the game
	get_tree().quit()
