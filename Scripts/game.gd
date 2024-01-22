extends CanvasLayer


var score = 0
var hitDamage = 1

func _ready():
	pass # Replace with function body.

func _process(delta):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()

		



