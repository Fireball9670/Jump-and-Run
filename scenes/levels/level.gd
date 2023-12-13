extends Node2D

var fireball_scene: PackedScene = preload("res://scenes/projectiles/fireball.tscn")

var test_array: Array[String] = ["Test, Beans, Bruh"]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(_delta):
	pass


func _on_gate_player_entered_gate(body):
	print(body)




func _on_player_fireball(pos, direction):
	var fireball = fireball_scene.instantiate() as RigidBody2D
	fireball.position = pos
	fireball.linear_velocity = direction * 500
	$Projectiles.add_child(fireball)
