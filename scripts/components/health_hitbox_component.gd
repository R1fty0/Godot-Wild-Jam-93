extends Area3D
class_name HealthHitboxComponent

@export var health_component: HealthComponent

func _ready() -> void:
	area_entered.connect(_on_area_entered)
	
func _on_area_entered(area: Area3D) -> void: 
	if area is AttackComponent:
		health_component.take_damage(area.damage)
