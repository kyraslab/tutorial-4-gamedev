extends RigidBody2D

@export var move_distance: float = 500
@export var speed: float = 200

var direction: int = 1
var initial_position: float
var target_position: float

func _ready():
	gravity_scale = 0
	position = Vector2(1043, 417)
	initial_position = position.x
	target_position = position.x + move_distance

func _process(delta):
	linear_velocity = Vector2(speed * direction, 0)

	if position.x >= target_position:
		direction = -1
	elif position.x <= initial_position:
		direction = 1
