extends AnimatedSprite2D

var rewardClaimed = false


@onready var boulder = get_node("/root/Game/Boulder")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(_delta):
	self.play()


func _on_animation_looped():
	boulder.health -= Game.hitDamage
	boulder.image.frame += 1
	if boulder.health <=0:
		#reset health
		boulder.health = boulder.startingHealth 
		boulder.image.frame += 1
		await get_tree().create_timer(0.1).timeout
		#add reward to cash
		Game.score += boulder.reward
				#rest image
		boulder.image.frame = 0
