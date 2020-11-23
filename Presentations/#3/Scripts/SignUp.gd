extends Button

var signUpHighlighted = preload("res://Themes/SignUpHighlighted.tres")
var signUp = preload("res://Themes/SignUp.tres")

var highligted := false setget highlight

func _ready():
	pass

func highlight(toggle):
	if toggle:
		set("custom_styles/normal", signUpHighlighted)
		set("custom_colors/font_color", "#FFFFFF")
	else:
		set("custom_styles/normal", signUp)
		set("custom_colors/font_color", "#a3adb8")
