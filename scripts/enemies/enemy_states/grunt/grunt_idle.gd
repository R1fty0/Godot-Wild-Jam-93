extends State
class_name GruntIdle
## Resting state enemy is in when the player is not in the room. 

@export var enemy_root: Enemy

func enter_state():
	print("Enemy entered idle state")
	if enemy_root:
		enemy_root.activated.connect(_transition_to_chase)

func _transition_to_chase() -> void:
	print("Enemy going to chase")
	transitioned.emit(self, "GruntChase")
