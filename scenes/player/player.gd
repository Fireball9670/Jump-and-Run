extends CharacterBody2D

func _process(_delta):
	
	const speed = 300
	var modifier = 1
	
		# fireball thrower
	if(Input.is_action_pressed("primary")):
		print("fire")
	
	if(Input.is_action_pressed("secondary")):
		print("run")
		modifier = 2
	
	
	# input
	var direction = Input.get_vector("left","right","up","down")
	velocity = direction * speed * modifier
	move_and_slide()
