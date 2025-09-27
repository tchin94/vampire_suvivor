extends CharacterBody2D

@onready var player = get_node("/root/Game/Player")

func _physics_process(delta):
	const SPEED = 300
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * SPEED
	move_and_slide()
