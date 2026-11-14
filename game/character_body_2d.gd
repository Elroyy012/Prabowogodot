extends CharacterBody2D

var bullet_scene = preload("res://bullet.tscn")

const SPEED = 200

func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())

	velocity.x = Input.get_axis("left", "right") * SPEED
	velocity.y = Input.get_axis("up", "down") * SPEED
	velocity = lerp(get_real_velocity(), velocity, 0.1)

	if Input.is_action_just_pressed("shoot"):
		shoot()

	move_and_slide()

func shoot() -> void:
	var bullet = bullet_scene.instantiate()
	bullet.global_position = global_position
	bullet.rotation = rotation
	get_parent().add_child(bullet)
