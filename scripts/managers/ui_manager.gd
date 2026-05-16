extends CanvasLayer
class_name UIManager 

@onready var health_bar_label: Label = $VBoxContainer/HealthBarLabel

func _ready() -> void:
	var player = get_tree().get_first_node_in_group("player")
	initialize_ui(player)

func initialize_ui(player: Player):
	# Set up health label. 
	player.health_component.hit.connect(health_bar_label.display_health)
	
