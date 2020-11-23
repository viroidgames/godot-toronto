extends Control

var Package = preload("res://Scenes/Package.tscn")

func _ready():
	createPackages()

func createPackages():
	for package in Data.packages:
		var newPackage = Package.instance()
		
		newPackage.setup(package)
		
		add_child(newPackage)
