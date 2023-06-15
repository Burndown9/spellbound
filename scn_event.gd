extends Node2D

signal mouse_click

var text_speed = 2
var pagecount = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	#set frame to 0 to ensure we start at the right screen
	$aspr_book.set_frame_and_progress(0, 0)
	$bg.texture = load("res://art/stills/pro_walk.webp")
	$AnimationPlayer.play_backwards("fade_to_black") #fade in
	await get_tree().create_timer(2.0).timeout
	$aspr_book.play("default", 0.5)
	await $aspr_book.animation_finished
	$pagecount.visible = true
	write("Damn.\n\n\nThere was no time.\n\n\nI could feel them closing in on me.\n\n\n\n\nWhere is that damn summoning room???")
	await mouse_click
	TurnThePage()

func write(text):
	#use whenever writing something in the left page

	#first set visible_ratio to 0, to make it so that all this text is invisible
	$leftpagetext.visible_ratio = 0
	#then set the contents of the text. _process will render it visible automatically
	$leftpagetext.text = text

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#if there exists any unwritten text in the left page, write it (larger the last number the longer the time this takes)
	if $leftpagetext.visible_ratio < 1:
		$leftpagetext.visible_ratio += 1.0/$leftpagetext.text.length()/text_speed

func _input(event):
	if event.is_action_just_pressed("click"):
		emit_signal("mouse_click")


# in the words of metallica (the better version), turn the page
func TurnThePage(new_bg = ""):
	#clear the text
	$leftpagetext.text = ""
	$pagecount.text = ""
	#unflip the book
	$aspr_book.play_backwards("turnpage")
	await $aspr_book.animation_finished
	#change bg
	if new_bg != "":
		$bg.texture = load(new_bg)
	#flip the book
	$aspr_book.play("turnpage")
	await $aspr_book.animation_finished
	#new pagecount
	pagecount += 1
	$pagecount.text = "[right]" + str(pagecount) + "[/right]"
