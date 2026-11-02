extends GridContainer
class_name Page

func add_button(num: int) -> void:
	var new_button = Button.new()
	new_button.text = "Button 3 " + str(num)
	add_child(new_button)
	pass
