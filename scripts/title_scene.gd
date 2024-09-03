extends Node2D


func on_menu_game_pressed() -> void:
	get_tree().change_scene_to_file("res://nodes/playing_scene.tscn")


func on_menu_map_pressed() -> void:
	get_tree().change_scene_to_file("res://nodes/map_scene.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Centering/MenuGame.pressed.connect(on_menu_game_pressed)
	$Centering/MenuMap.pressed.connect(on_menu_map_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
