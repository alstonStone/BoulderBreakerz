extends CanvasLayer


var score = 0
var hitDamage = 1



func _process(delta):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()





func _on_buy_orc_button_pressed():
	if Game.score >= 1:
		Game.score -= 1
		Game.spawn_orc()

func spawn_orc():
	var enemy_scene = preload("res://Scenes/orc.tscn")
	self.add_child(enemy_scene.new())
