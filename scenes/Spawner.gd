extends Node2D

@export var obstacle : PackedScene

func _ready():
	repeat()

func spawn():
	var spawned = obstacle.instantiate()
	
	var spawn_pos = global_position
	spawn_pos.x = spawn_pos.x + randf_range(-1000, 1000)
	spawned.global_position = spawn_pos
	
	get_parent().add_child(spawned)

func repeat():
	spawn()
	await get_tree().create_timer(1).timeout
	repeat()
