extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	position.y = 95
	position.x = -60
	rotation_degrees = 90


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#direction
	var direction = Vector2.RIGHT
	
	#velocity
	velocity = direction * 200
	
	#move and slide
	move_and_slide()
