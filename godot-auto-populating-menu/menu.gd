extends VBoxContainer
class_name Menu

@onready var button_num: int = 12
@onready var page_cont = get_child(1)

func _ready() -> void:
	populate_menu()

func populate_menu() -> void:
	var page_index = 0
	while button_num > 0:
		var cur_page = page_cont.get_child(page_index)
		for i in range(8):
			if cur_page.get_children().size() >= 8:
				print("Added Child")
				break
			else:
				cur_page.add_button(i)
				button_num -= 1
		add_page()
		page_index += 1
	pass

func add_page()-> void:
	var new_page = Page.new()
	new_page.visible = false
	new_page.columns = 2
	page_cont.add_child(new_page)
	pass
