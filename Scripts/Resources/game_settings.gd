class_name GameSettings
extends Resource

enum difficulty_mode {NORMAL, HARD}
enum inclusivity_mode {INCLUSIF, EXCLUSIF}
enum avatar {
	LIBRE,
	HOMME_HYPERSEXUALISE,
	FEMME_HYPERSEXUALISEE
}

@export var setting_name: String
@export var nb_throws: int
@export var is_chat_enabled: bool
@export var default_chat_message_duration: float
@export var is_avatar_selection_enabled: bool
@export var avatar_selection: avatar
@export var difficulty: difficulty_mode
@export var inclusivity: inclusivity_mode
@export var is_gender_question_enabled: bool

@export var comments: Array[Commentary]

func get_JSON() -> String:
	var result := "{"
	
	result += "\"nb_throws\": " + str(nb_throws) + ","
	result += "\"is_chat_enabled\": " + str(is_chat_enabled) + ","
	result += "\"default_chat_message_duration\": " + str(default_chat_message_duration) + ","
	result += "\"is_avatar_selection_enabled\": " + str(is_avatar_selection_enabled) + ","
	result += "\"avatar_selection\": " + str(avatar_selection) + ","
	result += "\"difficulty\": " + str(difficulty) + ","
	result += "\"inclusivity\": " + str(inclusivity) + ","
	result += "\"is_gender_question_enabled\": " + str(is_gender_question_enabled) + ","
	
	result += "\"comments\": ["
	
	if (comments.size() > 0):
		for c in comments:
			result += c.get_json() + ","
		
		result = result.erase(result.length()-1)
	
	result += "]"
	
	result += "}"
	
	return result
