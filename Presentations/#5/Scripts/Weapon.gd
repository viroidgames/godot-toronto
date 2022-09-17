extends Node

class_name Weapon

var max_ammo:int
var ammo:int = max_ammo

func use_ammo(value:int):
	ammo = clamp(ammo - value, 0, max_ammo)
	
func is_empty():
	return ammo <= 0

func fire(bullet:PackedScene):
	add_child(bullet.instance())
