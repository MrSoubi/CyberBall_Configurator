extends VBoxContainer

@export var commentary_scene: PackedScene

func _on_button_pressed() -> void:
	var new_commentary = commentary_scene.instantiate()
	add_child(new_commentary)

func get_comments() -> Array[Commentary]:
	var result: Array[Commentary]
	
	for child in get_children():
		child = child as CommentaryBlock
		result.append(child.data)
	
	return result
