extends VBoxContainer
class_name Menu

@onready var button_num: int = 12
@onready var page_cont = get_child(1)
@onready var sel_page = 0

func _ready() -> void:
	populate_menu()

func populate_menu() -> void:
	var page_index = 0
	while button_num > 0:
		var cur_page = page_cont.get_child(page_index)
		for i in range(8):
			if cur_page.get_children().size() >= 8:
				print("Added Child")
				add_page()
				break
			else:
				cur_page.add_button(i)
				button_num -= 1
		page_index += 1
	pass

func add_page()-> void:
	var new_page = Page.new()
	new_page.visible = false
	new_page.columns = 2
	new_page.set_anchors_preset(PRESET_FULL_RECT)
	page_cont.add_child(new_page)
	pass

##This function handles moving between the existing pages after they have been
##populated.
func button_handler(next: bool) -> void:
	page_cont.get_child(sel_page).visible = false
	if next == true:
		if sel_page +1 < page_cont.get_child_count():
			sel_page += 1
		else:
			sel_page = 0
	else:
		if sel_page != 0:
			sel_page -= 1
		else:
			sel_page = page_cont.get_child_count() - 1
	print(page_cont.get_child_count())
	page_cont.get_child(sel_page).visible = true
