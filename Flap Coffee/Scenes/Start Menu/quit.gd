extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func quit_to_main():
	get_tree().change_scene("res://Scenes/Start Menu.tscn")
	
func quit():
	get_tree().quit()
func _on_Quit_to_Main_Menu_button_down():
	quit_to_main()


func _on_quit_button_down():
	quit()


func _on_Quit_button_down():
	quit()
