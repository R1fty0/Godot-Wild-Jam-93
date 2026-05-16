extends Sprite3D


func _process(delta):
	var cam = get_viewport().get_camera_3d()
	rotation_degrees.z += 100 * delta
	look_at(cam.global_position, Vector3.UP)
