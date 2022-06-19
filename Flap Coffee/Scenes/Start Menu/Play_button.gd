extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Play_button_down():
	play()


func _on_Play_Again_button_down():
	play()

func play():
	get_tree().change_scene("res://Scenes/Game.tscn")
	print("[Start Menu] Changed Scene To Game View")
