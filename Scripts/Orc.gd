extends AnimatedSprite2D

var rewardClaimed = false


@onready var boulder = get_node("/root/Game/Boulder")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(_delta):
	self.play()


func _on_animation_looped():
	 
	get_tree().call_group("Boulder","_on_pressed")

