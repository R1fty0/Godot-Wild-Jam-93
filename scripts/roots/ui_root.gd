extends CanvasLayer
class_name UIRoot

@onready var health_bar_label: Label = $VBoxContainer/HealthBarLabel

func initialize_ui(player: Player):
	# Set up health label. 
	player.health_component.hit.connect(health_bar_label.display_health)
	
