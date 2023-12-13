extends Node2D

func _process(delta):
	
	# input
	var direction = Input.get_vector("left","right","up","down")
	print(direction)
	position += direction * 200 * delta
	
	# fireball thrower
	if(Input.is_action_pressed("primary")):
		print("fire")

	if(Input.is_action_pressed("secondary")):
		print("run")
