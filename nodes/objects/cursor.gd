extends Node2D

var fill_color = Globals.CUSTOM_WHITE
var radius_delta = 0.0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
	fill_color.a = 0.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position = get_global_mouse_position()
	
	fill_color.a = lerp(fill_color.a, 0.0, 12.0 * delta)
	if Input.is_action_pressed("Click") or Input.is_action_pressed("LeftPress") or Input.is_action_pressed("RightPress"):
		fill_color.a = 1.0
		radius_delta = lerp(radius_delta, 4.0, 12.0 * delta)
	else:
		radius_delta = lerp(radius_delta, 0.0, 12.0 * delta)
	queue_redraw()


#func _draw() -> void:
	#draw_circle(Vector2.ZERO, 10 + radius_delta, fill_color, true, -1, false)
	#draw_circle(Vector2.ZERO, 10 + radius_delta, CUSTOM_WHITE, false, 2, true)


func _notification(what: int) -> void:
	if what == NOTIFICATION_PREDELETE:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
