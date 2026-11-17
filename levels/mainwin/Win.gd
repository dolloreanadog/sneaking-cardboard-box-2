extends Control
class_name Win

func _on_restart_button_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/levels/maingame/MainGame.tscn")


func _on_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/mainmenu/MainMenu.tscn")


func _on_quit_button_pressed() -> void:
	get_tree().quit()
