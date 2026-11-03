extends GridContainer
class_name Page

func add_button(num: int) -> void:
	var new_button = Button.new()
	new_button.text = "Button " + str(num)
	new_button.size_flags_horizontal = SIZE_EXPAND + SIZE_SHRINK_CENTER
	add_child(new_button)
	pass
