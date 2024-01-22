extends AnimatedSprite2D

signal orc_hit_boulder
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(_delta):
	self.play()


func _on_animation_looped():
	orc_hit_boulder.emit()
