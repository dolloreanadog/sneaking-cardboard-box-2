extends Area2D
class_name Light

func _process(delta: float) -> void:
	CheckForBodies()

func CheckForBodies() -> void:
	if (monitoring):
		if (has_overlapping_bodies()):
			if (get_overlapping_bodies()[0] is Player):
					if (get_overlapping_bodies()[0].velocity != Vector2(0, 0)):
						get_tree().change_scene_to_file("res://levels/mainover/Over.tscn")

func _on_body_entered(body: Node2D) -> void:
	if (body is Player):
		if (body.velocity != Vector2(0, 0)):
			get_tree().change_scene_to_file("res://levels/mainover/Over.tscn")
