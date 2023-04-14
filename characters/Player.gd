extends CharacterBody2D

@export var speed = 200
var velocity2 = Vector2.ZERO
func _physics_process(delta: float) -> void:
	# Get input
	var move_direction = Vector2.ZERO
	move_direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	move_direction.y = Input.get_action_strength("down") - Input.get_action_strength("up")

	# Update velocity based on input and speed
	velocity2 = move_direction.normalized() * speed

	# Update position using velocity and delta time
	position += velocity2 * delta


