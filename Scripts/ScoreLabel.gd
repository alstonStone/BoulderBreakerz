extends Label



func _process(delta):
	self.text = str(Game.score)



func _on_boulder_pressed():
	Game.score += 1
