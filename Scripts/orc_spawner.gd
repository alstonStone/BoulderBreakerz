extends Node2D

var orcCost = 1
var orcCount = 0


func spawn_orc():
	orcCount += 1
	if(orcCount <= 4):
		spawn_orc_at(orcCount)
	else:
		print("cant make an orc")

func spawn_orc_at(markerNumber):
	var orcScene = preload("res://Scenes/orc.tscn")
	var instance = orcScene.instantiate()
	add_child(instance)
	match markerNumber:
		1:
			instance.global_position = $"SpawnPostitions/SpawnPosition-1".global_position
		2:
			instance.global_position = $"SpawnPostitions/SpawnPosition-2".global_position
		3:
			instance.global_position = $"SpawnPostitions/SpawnPosition-3".global_position
		4:
			instance.global_position = $"SpawnPostitions/SpawnPosition-4".global_position
		_: 
			print(" cant make more orcs. ALL SPOTS FULL")
	instance.global_position


func _on_buy_orc_button_pressed():
	if(Game.score >= 1):
		Game.score -= 1
		spawn_orc()

