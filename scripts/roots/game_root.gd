extends Node
class_name GameRoot

# Reference to the player. 
@onready var player: Player = $Player
# Reference to UI root. 
@onready var ui_root: UIRoot = $UIRoot

func _ready() -> void:
	ui_root.initialize_ui(player)
	
