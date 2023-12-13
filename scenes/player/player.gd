extends CharacterBody2D

var can_fire: bool = true

var gravity = 1000.0
const WALKSPEED = 200

signal fireball(pos, direction)

#func _ready():
	#$PlayerImage.rotate(deg_to_rad(90))

func _process(_delta):
	
		# fireball thrower
	if(Input.is_action_pressed("primary")) and can_fire == true:
		var fireball_marker = $FireballStartPositions.get_children()
		var selected_fireball = fireball_marker[randi() % fireball_marker.size()]
		var direction = (get_global_mouse_position() - position).normalized()
		can_fire = false
		$Timer.start()
		# emit selected position
		fireball.emit(selected_fireball.global_position, direction)

func _on_timer_timeout():
	can_fire = true

func _physics_process(delta):
	var direction = Input.get_vector("left","right","up","down")
	if Input.is_action_just_pressed("up"):
		gravity = 300.0
		velocity.y = -400
	elif Input.is_action_just_released("up"):
		gravity = 1000.0
	else:
		velocity.y += delta * gravity
	velocity.x = direction.x * WALKSPEED
	var motion = velocity * delta
	move_and_slide()
	
	
	if(direction.x > 0):
		$PlayerImage.flip_h = true
	elif(direction.x < 0):
		$PlayerImage.flip_h = false
