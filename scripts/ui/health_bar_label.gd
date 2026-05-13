extends Label
class_name HealthBarLabel

func display_health(health_value: int) -> void:
	text = "Health: " + str(health_value)
