extends Control

@export var settings: GameSettings = load("res://Data/game_settings.tres")
@onready var settings_name: LineEdit = $PanelContainer/MarginContainer/VBoxContainer/MarginContainer/SettingsName/SettingsName
@onready var v_box_container: VBoxContainer = $PanelContainer/MarginContainer/VBoxContainer/MarginContainer3/CommentsContainer/PanelContainer/CommentsContainer/VBoxContainer

signal save_config(content: String, file_name: String)

func _on_save_button_pressed() -> void:
	settings.comments = v_box_container.get_comments()
	save_config.emit(settings.get_JSON(), settings_name.text)

func _on_number_of_throws_value_changed(value: float) -> void:
	settings.nb_throws = value

func _on_is_chat_enabled_toggled(toggled_on: bool) -> void:
	settings.is_chat_enabled = toggled_on

func _on_chat_message_duration_value_changed(value: float) -> void:
	settings.default_chat_message_duration = value

func _on_is_avatar_selection_enabled_toggled(toggled_on: bool) -> void:
	settings.is_avatar_selection_enabled = toggled_on

func _on_difficulty_mode_item_selected(index: int) -> void:
	settings.difficulty = index

func _on_inclusivity_mode_item_selected(index: int) -> void:
	settings.inclusivity = index

func _on_is_gender_question_enabled_toggled(toggled_on: bool) -> void:
	settings.is_gender_question_enabled = toggled_on

func _on_avatar_choice_item_selected(index: int) -> void:
	settings.avatar_selection = index
