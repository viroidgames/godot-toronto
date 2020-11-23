extends Control


func _ready():
	pass

func setup(data):
	$Name.text = data.title
	$Price.text = "$" + str(data.price)

#func highlight():
#	pass


func _on_Package_mouse_entered():
	$SignUp.highligted = true


func _on_Package_mouse_exited():
	$SignUp.highligted = false
