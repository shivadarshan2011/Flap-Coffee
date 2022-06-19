extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()
var jumped = false

func _ready():
	set_physics_process(true)
	
func get_input():
	velocity = Vector2()
	
	if Input.is_action_pressed("jump") and jumped == false:
		velocity.y -= speed
		jumped = true
	if jumped == true and not Input.is_action_pressed("jump"):
		jumped = false
	velocity = velocity.normalized() * speed
	velocity.y += speed/2
	jumped = false

func fail():
	get_tree().change_scene("res://Scenes/Fail Menu.tscn")
func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
	if position.y > 589:
		fail()
		
