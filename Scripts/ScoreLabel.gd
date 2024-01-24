extends Label


func _process(delta):
	self.text = "CASH : $"+str(Game.score)
