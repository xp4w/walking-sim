extends CharacterBody2D

@export var speed: int = 40.0

func _physics_process(delta):
	var x_mov: int = Input.get_action_strength("right") - Input.get_action_strength("left")
	var y_mov: int = Input.get_action_strength("down") - Input.get_action_strength("up")
	var movement: Vector2 = Vector2(x_mov, y_mov)
	
	velocity = movement.normalized() * speed
	
	move_and_slide()
