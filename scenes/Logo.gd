extends Sprite2D

var test_scale: int = 1
var pos: Vector2 = Vector2.ZERO
const speed: int = 150

# Called when the node enters the scene tree for the first time.
func _ready():
	pos = Vector2(300,200)
	position = pos
	
	#var test_rotation = 45
	#rotation_degrees = test_rotation


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x = pos.x
