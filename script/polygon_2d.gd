extends Area2D

var direction: Vector2
const SPEED = 200

func _physics_process(delta: float) -> void:
	global_position += direction * SPEED
