class_name Commentary extends Resource

@export var bot_id: int = 1
@export var throw_id: int = 1
@export var text: String

func get_json() -> String :
	var result = "{"
	
	result += "\"bot_id\": "
	result += str(bot_id)
	result += ","
	
	result += "\"throw_id\": "
	result += str(throw_id)
	result += ","
	
	result += "\"text\": \""
	result += text
	result += "\""
	
	result += "}"
	
	return result
