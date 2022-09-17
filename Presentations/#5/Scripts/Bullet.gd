extends Spatial

const speed:int = 100

func _process(delta):
	translate(Vector3.FORWARD * delta * speed)
