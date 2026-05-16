extends State
class_name GruntChase

@export var speed: float = 2.0 
@export var character_body: CharacterBody3D
@export var attack_raycast: AttackRaycast
var player_position: Vector3

func _ready() -> void:
	if attack_raycast:
		attack_raycast.player_hit.connect(_switch_to_attack_state)

func state_physics_process(_delta: float):
	# TODO: Expensive call -> look to move to a enemy manager later. 
	var player = get_tree().get_first_node_in_group("player")
	player_position = player.global_position
	# Move the enemy in a straight line towards the player. 
	var direction = player_position - character_body.global_position
	direction.y = 0
	direction = direction.normalized()
	character_body.velocity.x = direction.x * speed
	character_body.velocity.z = direction.z * speed
	character_body.move_and_slide()

func _switch_to_attack_state():
	transitioned.emit(self, "GruntAttack")
