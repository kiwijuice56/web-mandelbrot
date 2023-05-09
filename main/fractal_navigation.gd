# Implements navigation through the fractal using mouse inputs
class_name FractalNavigation
extends ColorRect

export var zoom_sens: float = 0.06
export var drag_speed: float = 0.0063

var pos_min: Vector2 setget set_pos_min, get_pos_min
var pos_max: Vector2 setget set_pos_max, get_pos_max

var init_pos_min: Vector2
var init_pos_max: Vector2

var zoom_vel: float = 1.0
var zoom: float = 1.0 setget set_zoom

var events: Dictionary = {}
var last_drag_distance: float = 0.0
var was_dragging: bool = false

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
	init_pos_min = Vector2(-2.5, -2)
	init_pos_max = Vector2(1.5, 2)
	update_window()

func _input(event: InputEvent) -> void:
	# Mobile zooming
	# https://kidscancode.org/godot_recipes/3.x/2d/touchscreen_camera/
	if event is InputEventScreenTouch:
		if event.pressed:
			events[event.index] = event
		else:
			events.erase(event.index)
	if event is InputEventScreenDrag:
		events[event.index] = event
		if events.size() == 2:
			var drag_distance = events[0].position.distance_to(events[1].position)
			if abs(drag_distance - last_drag_distance) > zoom_sens:
				zoom_vel = 1 + zoom_sens if drag_distance < last_drag_distance else 1 - zoom_sens
				last_drag_distance = drag_distance
			was_dragging = true
	
	# PC zooming
	if event is InputEventMouseButton:
		if Input.is_mouse_button_pressed(BUTTON_WHEEL_UP):
			zoom_vel = 1 - zoom_sens
		elif Input.is_mouse_button_pressed(BUTTON_WHEEL_DOWN):
			zoom_vel = 1 + zoom_sens
	
	# Panning
	if len(events) < 2 and not was_dragging and event is InputEventMouseMotion and Input.is_mouse_button_pressed(BUTTON_LEFT):
		var move_vector: Vector2 = event.relative
		move_vector.x *= get_aspect_ratio()
		init_pos_max -= zoom * move_vector * drag_speed
		init_pos_min -= zoom * move_vector * drag_speed
	
	if len(events) == 0:
		was_dragging = false

func _process(_delta) -> void:
	zoom_vel = lerp(zoom_vel, 1.0, 0.25)
	self.zoom *= zoom_vel
	update_window()

func update_window() -> void:
	var aspect_ratio: float = get_aspect_ratio()
	
	var x_center: float = (init_pos_max.x - init_pos_min.x) / 2.0
	var x_new_range: float = zoom * (init_pos_max.x - init_pos_min.x)
	var y_center: float = (init_pos_max.y - init_pos_min.y) / 2.0
	var y_new_range: float = zoom * (init_pos_max.y - init_pos_min.y)
	
	var temp_min = Vector2(init_pos_min.x + x_center - x_new_range / 2.0, init_pos_min.y + y_center - y_new_range / 2.0)
	self.pos_max = Vector2(init_pos_min.x + x_center + x_new_range / 2.0, init_pos_min.y + y_center + y_new_range / 2.0)
	self.pos_min = temp_min
	
	self.pos_min.y *= aspect_ratio
	self.pos_max.y *= aspect_ratio

func get_aspect_ratio() -> float:
	var height: float = get_viewport().size.y
	var width: float = get_viewport().size.x
	return height / width
