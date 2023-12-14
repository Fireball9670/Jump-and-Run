extends RigidBody2D


func _on_timer_timeout():
	print("timeout")
	queue_free()
