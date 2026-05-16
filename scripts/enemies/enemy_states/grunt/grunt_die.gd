extends State
class_name GruntDie

@export var enemy_root: Enemy

func enter_state():
	if enemy_root:
		enemy_root.queue_free()
		print("Enemy is dead.")
