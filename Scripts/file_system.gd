extends Node

func save_to_file(content: String, file_name: String):
	var path = OS.get_executable_path()
	var file = FileAccess.open(path + "/" + file_name + ".json", FileAccess.WRITE)
	file.store_string(content)
	file = null


func _on_ui_save_config(content: String, file_name: String) -> void:
	save_to_file(content, file_name)
