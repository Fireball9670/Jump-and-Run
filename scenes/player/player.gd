extends CharacterBody2D

var can_fire: bool = true

func _process(_delta):
	
	const speed = 300
	var modifier = 1
	
		# fireball thrower
	if(Input.is_action_pressed("primary")) and can_fire == true:
		print("fire")
		can_fire = false
		$Timer.start()
	
	if(Input.is_action_pressed("secondary")):
		print("run")
		modifier = 2
	
	# input
	var direction = Input.get_vector("left","right","up","down")
	velocity = direction * speed * modifier
	move_and_slide()
	
	if(direction.x > 0):
		$PlayerImage.flip_h = true
	elif(direction.x < 0):
		$PlayerImage.flip_h = false

func _on_timer_timeout():
	can_fire = true
