extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(_delta):
	self.play()


func _on_buy_orc_button_pressed():
	
	if Game.score >= 5 :
		Game.score -= 5
		self.visible = true
