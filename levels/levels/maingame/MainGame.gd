extends Node2D
class_name MainGame

@onready var static_lights: Node2D = $LightGroup/StaticLights
@export var nextScene: PackedScene
@export var levelState: Global.LevelState

func _ready() -> void:
	print(get_tree().get_current_scene().name)
	Global.currentLevelState = levelState
	await get_tree().create_timer(1).timeout
	print(nextScene.get_path())

func TurnOffSomeLights() -> void:
	$CircuitBreaker1.play()
	await get_tree().create_timer(1).timeout
	var lights: Array[Node] = static_lights.get_children()
	for light: Light in lights:
		if (bool(randi_range(0, 1))):
			light.hide()
			light.monitoring = false
		else:
			light.show()
			light.monitoring = true

func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body is Player):
		get_tree().change_scene_to_packed(nextScene)

func _on_timer_timeout() -> void:
	TurnOffSomeLights()
