extends Node3D
class_name Room

@export var enemies: Array[Enemy]
@export var room_trigger: RoomTrigger
var activated: bool = false

func _ready() -> void:
	print("Room trigger signal connected to room")
	if room_trigger:
		room_trigger.triggered.connect(_activate_enemies)
	
func _activate_enemies() -> void:
	if not activated:
		for enemy in enemies:
			enemy.activated.emit()
			print("Room activating enemies")
			activated = true
