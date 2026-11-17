extends ColorRect
class_name PlantSpot

@export var game: MainGame4
@onready var area2d: Area2D = get_child(0)
var isActivated: bool = false

signal objComplete

func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body is Player && !isActivated):
		set_deferred("monitoring", false)
		isActivated = true
		objComplete.emit()
		color = Color(Color.WEB_GREEN)
