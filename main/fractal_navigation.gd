# Navigation through the fractal using mouse inputs
class_name FractalNavigation
extends ColorRect

export var zoom_sensitivity: float = 0.06
export var drag_speed: float = 0.0063
export var move_speed: float = 0.8
export var rotate_speed: float = 0.6

# The top-left and bottom-right bounds of the graph, synced with the shader
var pos_min: Vector2 setget set_pos_min, get_pos_min
var pos_max: Vector2 setget set_pos_max, get_pos_max

# The top-left and bottom-right bounds of the graph before the zoom scale
var offset_min: Vector2
var offset_max: Vector2

# The zoom scalar has a velocity in order to implement smooth zooming
var zoom_vel: float = 1.0
var zoom: float = 1.0 setget set_zoom

# Extra state to implement mobile zooming and dragging
var events: Dictionary = {}
var last_drag_distance: float = 0.0
var was_dragging: bool = false
var mouse_lock: bool = false

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
	offset_min = Vector2(-2.5, -2)
	offset_max = Vector2(1.5, 2)
	update_window()

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion and not mouse_lock:
		var pos: Vector2 = event.position / get_viewport().size
		material.set_shader_param("mouse_pos", (pos_max - pos_min) * pos + pos_min)
	
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
			if abs(drag_distance - last_drag_distance) > zoom_sensitivity:
				zoom_vel = 1 + zoom_sensitivity if drag_distance < last_drag_distance else 1 - zoom_sensitivity
				last_drag_distance = drag_distance
			was_dragging = true
	
	# PC zooming
	if event is InputEventMouseButton:
		if Input.is_mouse_button_pressed(BUTTON_WHEEL_UP):
			zoom_vel = 1 - zoom_sensitivity
		elif Input.is_mouse_button_pressed(BUTTON_WHEEL_DOWN):
			zoom_vel = 1 + zoom_sensitivity
	
	# Panning
	if len(events) < 2 and not was_dragging and event is InputEventMouseMotion and Input.is_mouse_button_pressed(BUTTON_LEFT):
		var move_vector: Vector2 = event.relative
		move_vector.x *= get_aspect_ratio()
		offset_max -= zoom * move_vector * drag_speed
		offset_min -= zoom * move_vector * drag_speed
	
	if len(events) == 0:
		was_dragging = false

func _process(delta: float) -> void:
	zoom_vel = lerp(zoom_vel, 1.0, 0.25)
	self.zoom *= zoom_vel
	
	var kb_vector: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	var kb_angle: float = Input.get_action_strength("rotate_left") - Input.get_action_strength("rotate_right")
	kb_vector.x *= get_aspect_ratio() 
	
	offset_max += zoom * kb_vector * move_speed * delta
	offset_min += zoom * kb_vector * move_speed * delta
	
	material.set_shader_param("angle", material.get_shader_param("angle") + kb_angle * delta * rotate_speed)
	
	update_window()

func update_window() -> void:
	var aspect_ratio: float = get_aspect_ratio()
	
	var x_center: float = (offset_max.x - offset_min.x) / 2.0
	var x_new_range: float = zoom * (offset_max.x - offset_min.x)
	var y_center: float = (offset_max.y - offset_min.y) / 2.0
	var y_new_range: float = zoom * (offset_max.y - offset_min.y)
	
	var temp_min = Vector2(offset_min.x + x_center - x_new_range / 2.0, offset_min.y + y_center - y_new_range / 2.0)
	
	self.pos_max = Vector2(offset_min.x + x_center + x_new_range / 2.0, offset_min.y + y_center + y_new_range / 2.0)
	self.pos_min = temp_min
	
	self.pos_min.y *= aspect_ratio
	self.pos_max.y *= aspect_ratio
	
	material.set_shader_param("width", get_viewport().size.x)
	material.set_shader_param("height", get_viewport().size.y)

func get_aspect_ratio() -> float:
	var height: float = get_viewport().size.y
	var width: float = get_viewport().size.x
	return height / width
