extends CharacterBody2D
class_name Player

@export var speed = 400

func _physics_process(delta) -> void:
	GetInput()
	move_and_slide()

func GetInput():
	var input_direction: Vector2 = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
