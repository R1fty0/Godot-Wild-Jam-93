extends Area3D
class_name RoomTrigger

signal triggered

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node3D) -> void:
	if body is Player:
		print("1")
		triggered.emit()
