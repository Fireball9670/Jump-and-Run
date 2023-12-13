extends Node2D

var test_array: Array[String] = ["Test, Beans, Bruh"]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(_delta):
	pass


func _on_gate_player_entered_gate(body):
	print(body)
