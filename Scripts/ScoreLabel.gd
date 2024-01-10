extends Label

@onready var orcMiner = $Orc

func _process(delta):
	self.text = "CASH : $"+str(Game.score)



