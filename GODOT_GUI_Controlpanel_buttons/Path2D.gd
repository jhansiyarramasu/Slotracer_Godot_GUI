extends Path2D

onready var follow = get_node("follow")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var paused = false
var speed = 0
var max_speed = 1000 

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	follow.set_offset(follow.get_offset() + speed * delta)


func _on_START_pressed():
	speed = 500
	pass # Replace with function body.


func _on_STOP_pressed():
	speed = 0
	print ("Hello")
	pass # Replace with function body.


func _on_Speed_up_pressed():
	if speed < max_speed :
		speed += 20
	pass # Replace with function body.


func _on_Speed_down_pressed():
	if speed > 20 :
		speed -= 20
	pass # Replace with function body.
