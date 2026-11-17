extends MainGame
class_name MainGame4

var objComplete: int = 0

@onready var escape_control: Control = $Player/Control/EscapeControl
@onready var time_left_label: Label = $Player/Control/EscapeControl/TimeLeftLabel
@onready var obj_label: Label = $Player/Control/Control/ObjLabel
@onready var escape_timer: Timer = $Player/Control/EscapeTimer


@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	time_left_label.text = str(snappedf(escape_timer.time_left, 0.1))

func _on_plant_spot_obj_complete() -> void:
	objComplete += 1
	UpdateObj()
	ObjFinishedCheck()

func UpdateObj() -> void:
	obj_label.text = "Bombs Planted: %s/4" % [objComplete]

func ObjFinishedCheck() -> void:
	if (objComplete >= 4):
		$Objects/Door.queue_free()
		escape_control.show()
		escape_timer.start(30)

func _on_escape_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://levels/mainover/Over.tscn")
