extends Node2D


@onready var point_light_2d: PointLight2D = $YSort/PointLight2D


func _process(delta: float) -> void:
	point_light_2d.position = get_local_mouse_position()
