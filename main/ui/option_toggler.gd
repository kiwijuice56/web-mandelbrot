# Handles parameter input for the shader
class_name OptionToggler
extends Node

# Each string in this array corresponds to a boolean in the shader and an input 
# action to reduce code repetition for simple toggles
const settings = ["oversample", "burning_ship", "julia"]

onready var fractal: FractalNavigation =  get_tree().get_root().get_node("FractalNavigation")
onready var material: ShaderMaterial = fractal.material

func _input(event: InputEvent) -> void:
	for toggle in settings:
		if Input.is_action_just_pressed(toggle):
			material.set_shader_param(toggle, not material.get_shader_param(toggle))
	if event.is_action_pressed("mouse_lock", false):
		fractal.mouse_lock = not fractal.mouse_lock
	for i in range(9):
		if Input.is_key_pressed(KEY_0 + i):
			material.set_shader_param("palette", i)
