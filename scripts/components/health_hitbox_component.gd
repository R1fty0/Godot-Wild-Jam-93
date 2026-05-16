extends Area3D
class_name HealthHitboxComponent

@export var health_component: HealthComponent

func _ready() -> void:
	area_entered.connect(_on_area_entered)
	
func _on_area_entered(area: Area3D) -> void: 
	if area is AttackComponent:
		print("Damaged: " + str(health_component.get_parent().name) + " for: " + str(area.damage))
		health_component.take_damage(area.damage)
		area.queue_free()
