extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# TODO move these into a book script
func FirstOpen():
	get_node("aspr_book").play("default")

# in the words of metallica (the better version), turn the page
func TurnThePage():
	#unflip the book
	get_node("aspr_book").play_backwards("turnpage")
	#flip the book
	get_node("aspr_book").play("turnpage")
