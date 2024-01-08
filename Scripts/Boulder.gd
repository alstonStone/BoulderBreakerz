extends Button


var startingHealth = 5
var health = startingHealth
var reward = 1

@onready var image = $BoulderImage

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	health -= Game.hitDamage
	image.frame += 1
	if health <=0:
		#reset health
		health = startingHealth 
		image.frame += 1
		await get_tree().create_timer(0.1).timeout
		#add reward to cash
		Game.score += reward
				#rest image
		image.frame = 0
