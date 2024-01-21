extends CanvasLayer


var score = 0
var hitDamage = 1

@onready var orc_spawner = $OrcSpawner

func _ready():
	pass # Replace with function body.

func _process(delta):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()

		



func _on_buy_orc_button_pressed():
	print("clicked")
