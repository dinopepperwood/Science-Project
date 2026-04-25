extends Node2D

func _ready():
	pass

func _input(event: InputEvent) -> void:
	if Global.current != null:
		if Input.is_action_just_pressed("Mass_Increase"):
			Global.current.mass+=1
		elif Input.is_action_just_pressed("Mass_Decrease"):
			Global.current.mass-=1

func _physics_process(delta: float) -> void:
	pass
