extends Control
class_name MainMenu

@onready var controls_panel: Panel = $ControlsPanel
@onready var story_panel: Panel = $StoryPanel

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/levels/maingame/MainGame.tscn")

func _on_controls_button_pressed() -> void:
	if (controls_panel.visible):
		controls_panel.hide()
	else:
		controls_panel.show()

func _on_story_button_pressed() -> void:
	if (story_panel.visible):
		story_panel.hide()
	else:
		story_panel.show()

func _on_quit_button_pressed() -> void:
	get_tree().quit()
