extends Node2D

var orcCost = 1
var orcCount = 0

@onready var spawn_positions = $SpawnPostitions

func _ready():
	pass # Replace with function body.

func spawn_orc():
	orcCount += 1
	if(orcCount <= 4):
		spawn_orc_at(orcCount)
	else:
		print("cant make an orc")

func spawn_orc_at(markerNumber):
	var orcScene = preload("res://Scenes/orc.tscn")
	var spawn_positions_array = spawn_positions.get_children
	var instance = orcScene.instantiate()
	add_child(instance)
	instance.global_position = spawn_positions_array.pop_at(0)
