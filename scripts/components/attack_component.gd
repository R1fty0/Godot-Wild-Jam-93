extends Area3D
class_name AttackComponent
## All attacks use sphere colliders considering 2.5D perspective. 

@export var damage: float = 1.0 
@export var damage_radius: float = 1.0 
@export var collision_shape: CollisionShape3D

func _ready() -> void:
	if collision_shape:
		# Make sure the collider is spherical
		if !collision_shape.shape is SphereShape3D:
			collision_shape.shape = SphereShape3D.new()

func set_damage(new_damage: float):
	damage = new_damage

func set_radius(radius: float):
	collision_shape.shape.radius = radius
