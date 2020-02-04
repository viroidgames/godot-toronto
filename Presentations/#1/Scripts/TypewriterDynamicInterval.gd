extends Label

export (float) var duration = 1

var original_text
var type_index = 0

func _ready() -> void:
	setup()

func setup():
	original_text = text
	text = ""

	$Timer.wait_time = duration / original_text.length()
	$Timer.connect("timeout", self, "type")
	$Timer.start()

func type():
	if original_text == text:
		$Timer.disconnect("timeout", self, "type")
	else:
		type_index+=1
		text = original_text.substr(0, type_index)
