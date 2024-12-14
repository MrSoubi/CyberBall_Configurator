class_name GameSettings
extends Resource

enum difficulty_mode {NORMAL, HARD}
enum inclusivity_mode {INCLUSIF, EXCLUSIF}

@export var setting_name: String
@export var nb_throws: int
@export var is_chat_enabled: bool
@export var default_chat_message_duration: float
@export var is_avatar_selection_enabled: bool
@export var difficulty: difficulty_mode
@export var inclusivity: inclusivity_mode
@export var is_gender_question_enabled: bool

@export var comments: Array[Resource]
