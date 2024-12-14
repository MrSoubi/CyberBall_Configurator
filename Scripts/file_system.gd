extends Node

func save_to_file(content: String, file_name: String):
	var path = OS.get_executable_path()
	var file = FileAccess.open(file_name + ".json", FileAccess.WRITE)
	
	if(FileAccess.get_open_error() != 0):
		print(FileAccess.get_open_error())
	
	file.store_string(content)

func _on_ui_save_config(content: String, file_name: String) -> void:
	save_to_file(content, file_name)
