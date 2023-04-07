# Implements navigation through the fractal using mouse inputs
class_name FractalNavigation
extends ColorRect

export var zoom_sens: float = 0.06
export var drag_speed: float = 0.003

var pos_min: Vector2 setget set_pos_min, get_pos_min
var pos_max: Vector2 setget set_pos_max, get_pos_max

var init_pos_min: Vector2
var init_pos_max: Vector2

var zoom_vel: float = 1.0

var zoom: float = 1.0 setget set_zoom

func set_pos_min(val: Vector2) -> void:
	material.set_shader_param("x_min", val.x)
	material.set_shader_param("y_min", val.y)
	pos_min = val

func get_pos_min() -> Vector2:
	pos_min.x = material.get_shader_param("x_min")
	pos_min.y = material.get_shader_param("y_min")
	return pos_min

func set_pos_max(val: Vector2) -> void:
	material.set_shader_param("x_max", val.x)
	material.set_shader_param("y_max", val.y)
	pos_max = val

func get_pos_max() -> Vector2:
	pos_max.x = material.get_shader_param("x_max")
	pos_max.y = material.get_shader_param("y_max")
	return pos_max


func set_zoom(val: float) -> void:
	update_window()
	zoom = val

func _ready() -> void:
	init_pos_min = Vector2(-2, -2)
	init_pos_max = Vector2(2, 2)
	update_window()

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion and Input.is_mouse_button_pressed(BUTTON_LEFT):
		init_pos_max -= zoom * event.relative * drag_speed
		init_pos_min -= zoom * event.relative * drag_speed
	if event is InputEventMouseButton:
		if Input.is_mouse_button_pressed(BUTTON_WHEEL_UP):
			zoom_vel = 1 - zoom_sens
		elif Input.is_mouse_button_pressed(BUTTON_WHEEL_DOWN):
			zoom_vel = 1 + zoom_sens

func _process(_delta) -> void:
	zoom_vel = lerp(zoom_vel, 1.0, 0.25)
	self.zoom *= zoom_vel
	update_window()

func update_window() -> void:
	var height: float = get_viewport().size.y
	var width: float = get_viewport().size.x
	var aspect_ratio: float = height / width;
	
	var x_center: float = (init_pos_max.x - init_pos_min.x) / 2.0
	var x_new_range: float = zoom * (init_pos_max.x - init_pos_min.x)
	var y_center: float = (init_pos_max.y - init_pos_min.y) / 2.0
	var y_new_range: float = zoom * (init_pos_max.y - init_pos_min.y)
	
	var temp_min = Vector2(init_pos_min.x + x_center - x_new_range / 2.0, init_pos_min.y + y_center - y_new_range / 2.0)
	self.pos_max = Vector2(init_pos_min.x + x_center + x_new_range / 2.0, init_pos_min.y + y_center + y_new_range / 2.0)
	self.pos_min = temp_min
	
	self.pos_min.y *= aspect_ratio
	self.pos_max.y *= aspect_ratio
