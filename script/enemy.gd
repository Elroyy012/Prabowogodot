extends CharacterBody2D

@onready var player: Node2D = get_tree().current_scene.get_node_or_null("Player")

const SPEED = 100

func _physics_process(delta: float) -> void:
	if player == null:
		return
	velocity = (player.global_position - global_position).normalized() * SPEED
	
	look_at(player.global_position)
	
	move_and_slide()
