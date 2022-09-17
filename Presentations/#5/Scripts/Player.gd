extends Spatial

const rotation_speed = 60

func _input(event):
	if event is InputEventMouseMotion:
		$Camera.rotation_degrees.y += -deg2rad(rotation_speed * event.relative.x)
		$Camera.rotation_degrees.x += -deg2rad(rotation_speed * event.relative.y)
		$Camera.rotation_degrees.x = clamp($Camera.rotation_degrees.x, -15, 45)
	
	
