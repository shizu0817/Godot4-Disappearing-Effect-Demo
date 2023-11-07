extends Sprite2D

@export var effect_scene: PackedScene

@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("R"):
		animation_player.play("RESET")
	
	if Input.is_action_just_pressed("Space"):
		animation_player.stop()
		animation_player.play("dissolve")
		add_effect()
		
		
func add_effect():
	var effect = effect_scene.instantiate()
	add_child(effect)
