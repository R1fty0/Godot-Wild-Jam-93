extends Node
class_name GameRoot

# Reference to the player. 
@onready var player: Player = $Player
# Reference to UI root. 
@onready var ui_root: UIRoot = $UIRoot

func _ready() -> void:
	# Pass player reference to UI root for UI initialization. 
	ui_root.initialize_ui(player)
	
