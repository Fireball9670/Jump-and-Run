extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	position.y = 95
	position.x = -60
	rotation_degrees = 90


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += 100 * delta
	
	if(position.x > 1215):
		position.x = -60
