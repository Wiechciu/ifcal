extends Control



@export var gregorian_line_edit: LineEdit
@export var ifc_line_edit: LineEdit


func _ready() -> void:
	gregorian_line_edit.text_changed.connect(_on_gregorian_line_edit_text_changed)
	ifc_line_edit.text_changed.connect(_on_ifc_line_edit_text_changed)


func _on_gregorian_line_edit_text_changed(new_text: String) -> void:
	ifc_line_edit.text = IFC.get_ifc_date_string_from_gregorian_date_string(new_text)


func _on_ifc_line_edit_text_changed(new_text: String) -> void:
	gregorian_line_edit.text = IFC.get_gregorian_date_string_from_ifc_date_string(new_text)
