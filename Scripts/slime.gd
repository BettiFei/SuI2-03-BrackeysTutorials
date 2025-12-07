extends Node2D

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_down: RayCast2D = $RayCastDown
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

@export var speed = 60

var direction = 1

func _process(delta: float) -> void:
	if not ray_cast_down.is_colliding():
		direction *= -1
	if ray_cast_right.is_colliding():
		direction = -1
	if ray_cast_left.is_colliding():
		direction = 1
	if direction > 0:
		sprite.flip_h = false
	else:
		sprite.flip_h = true
	
	position.x += direction * speed * delta
