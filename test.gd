extends Node2D

func _ready():
	pass

func _input(event: InputEvent) -> void:
	if Global.current != null:
		if Input.is_action_just_pressed("Mass_Increase"):
			Global.current.mass+=1
		elif Input.is_action_just_pressed("Mass_Decrease") and Global.current.mass>1:
			Global.current.mass-=1
		elif Input.is_action_pressed("Increase_Force"):
			Global.current.force += 1
		elif Input.is_action_pressed("Decrease_Force"):
			Global.current.force-=1
		elif Input.is_action_just_pressed("Push"):
			Global.current.apply_central_impulse(Vector2(Global.current.force,0))

func _physics_process(delta: float) -> void:
	pass
