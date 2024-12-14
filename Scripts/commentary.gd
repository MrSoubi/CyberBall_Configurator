class_name CommentaryBlock
extends HBoxContainer

var data: Commentary

func _ready() -> void:
	data = Commentary.new()

func _on_button_pressed() -> void:
	self.queue_free()

func _on_bot_id_value_changed(value: float) -> void:
	data.bot_id = value

func _on_nde_lance_value_changed(value: float) -> void:
	data.throw_id = value

func _on_text_edit_text_changed(new_text: String) -> void:
	data.text = new_text
