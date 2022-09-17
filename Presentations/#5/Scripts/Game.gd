extends Node

var bullet:PackedScene = preload("res://Scenes/Bullet.tscn")

var weapon_index = 0
var weapons = [preload("res://Scenes/SquareWeapon.tscn")]

func _input(event):
	if event.is_action_pressed("fire"):
		$Player/Camera/Weapon.get_child(0).fire(bullet)
		$Player/Camera/Weapon.get_child(0).do_damage()
		
		

	if event.is_action_pressed("next_weapon"):
		update_weapon(1)
	if event.is_action_pressed("prev_weapon"):
		update_weapon(-1)
			
func update_weapon(delta:int):
	weapon_index = fposmod(weapon_index + delta, weapons.size())
	
	$Player/Camera/Weapon.remove_child($Player/Camera/Weapon.get_child(0))
	$Player/Camera/Weapon.add_child(weapons[weapon_index].instance())
	
	print($Player/Camera/Weapon.get_child(0).name)
	

func _on_Button_pressed():
	print("loading cylindrical weapon mod")
	
	ProjectSettings.load_resource_pack("usr://mods/CylinderWeapon.pck")
	
#	weapons.append(preload("res://Scenes/CylinderWeapon.tscn"))
	
	
	
