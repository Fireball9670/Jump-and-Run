extends Node2D

var test_array: Array[String] = ["Test, Beans, Bruh"]

# Called when the node enters the scene tree for the first time.
func _ready():
	$Logo.rotation_degrees = 90
	
	for i in test_array:
		print(i)

func _process(delta):
		
	if($Logo.position.x > 1000):
		$Logo.pos.x = 0
