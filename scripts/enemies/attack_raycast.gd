extends RayCast3D
class_name AttackRaycast

@export var attack_raycast_range: float = 10.0
signal player_hit


func _physics_process(_delta: float) -> void:
	# Make the raycast look at the player. 
	var player = get_tree().get_first_node_in_group("player")
	var direction = (player.global_position - global_position).normalized()
	target_position = direction * attack_raycast_range
	force_raycast_update()
	
	# Detect if the raycast is touching the player. 
	var collider = get_collider()
	if collider is Player:
		player_hit.emit()
	
