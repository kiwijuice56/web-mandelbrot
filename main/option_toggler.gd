# Handles parameter input for the shader
class_name OptionToggler
extends Node

# Each string in this array corresponds to a boolean in the shader and an input 
# action to reduce code repetition for simple toggles
const settings = ["oversample", "burning_ship"]

onready var material: ShaderMaterial = get_parent().material

func _input(_event: InputEvent) -> void:
	for toggle in settings:
		if Input.is_action_just_pressed(toggle):
			material.set_shader_param(toggle, not material.get_shader_param(toggle))
	for i in range(9):
		if Input.is_key_pressed(KEY_0 + i):
			material.set_shader_param("palette", i)
