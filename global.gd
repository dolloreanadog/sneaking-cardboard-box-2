extends Node

enum LevelState {LVL1, LVL2, LVL3}
var currentLevelState: LevelState

func ChooseLevelOnState() -> void:
	match currentLevelState:
		LevelState.LVL1:
			get_tree().change_scene_to_file("res://levels/levels/maingame/MainGame.tscn")
		LevelState.LVL2:
			get_tree().change_scene_to_file("res://levels/levels/maingame2/MainGame2.tscn")
		LevelState.LVL3:
			get_tree().change_scene_to_file("res://levels/levels/maingame4/MainGame4.tscn")
		_:
			push_error("Not a valid level state!")
			get_tree().change_scene_to_file("res://levels/levels/maingame/MainGame.tscn")

func _process(delta: float) -> void:
	if (Input.is_action_just_pressed("change1")):
		get_tree().change_scene_to_file("res://levels/levels/maingame/MainGame.tscn")
	if (Input.is_action_just_pressed("change2")):
		get_tree().change_scene_to_file("res://levels/levels/maingame2/MainGame2.tscn")
	if (Input.is_action_just_pressed("change3")):
		get_tree().change_scene_to_file("res://levels/levels/maingame4/MainGame4.tscn")
	if (Input.is_action_just_pressed("change4")):
		get_tree().change_scene_to_file("res://levels/mainwin/Win.tscn")
