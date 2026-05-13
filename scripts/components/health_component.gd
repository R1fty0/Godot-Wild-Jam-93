extends Node
class_name HealthComponent

signal death
signal hit

@export var starting_health: float = 100
var current_health: float = 100

func _ready() -> void:
	current_health = starting_health
	
func take_damage(damage: float):
	if damage >= current_health:
		current_health = 0
		death.emit()
	else:
		current_health -= damage
		hit.emit()
