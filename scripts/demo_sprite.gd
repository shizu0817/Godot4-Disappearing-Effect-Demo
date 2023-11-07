extends Sprite2D

@export var effect1: PackedScene
@export var effect2: PackedScene

@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("R"):
		animation_player.play("RESET")
	
	if Input.is_action_just_pressed("Q"):
		animation_player.play("dissolve1")
		add_effect1()
		
		
func add_effect1():
	var effect = effect1.instantiate()
	add_child(effect)


func add_effect2():
	pass
