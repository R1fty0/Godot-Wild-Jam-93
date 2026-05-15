extends Node3D
class_name Room

@export var enemies: Array[Enemy]
@export var room_trigger: RoomTrigger

func _ready() -> void:
	print("Room trigger signal connected to room")
	if room_trigger:
		room_trigger.triggered.connect(_activate_enemies)
	
func _activate_enemies() -> void:
	print("Room activating enemies")
	for enemy in enemies:
		enemy.activated.emit()
