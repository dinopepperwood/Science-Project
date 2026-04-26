extends Node2D
var box = preload("res://box.tscn")
func _ready():
	pass

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("Spawn"):
		var new_box = box.instantiate()
		new_box.position = get_global_mouse_position()
		add_child(new_box)
	if Global.current != null:
		if Input.is_action_pressed("Mass_Increase"):
			Global.current.mass+=1
		elif Input.is_action_pressed("Mass_Decrease") and Global.current.mass>1:
			Global.current.mass-=1
		elif Input.is_action_pressed("Increase_Force"):
			Global.current.force += 1
		elif Input.is_action_pressed("Decrease_Force"):
			Global.current.force-=1
		elif Input.is_action_just_pressed("Push"):
			Global.current.apply_central_impulse(Vector2(Global.current.force,0))
		elif Input.is_action_just_pressed("Restart"):
			get_tree().reload_current_scene()
		elif Input.is_action_just_pressed("Stop"):
			Global.current.linear_velocity=Vector2.ZERO
		elif Input.is_action_just_pressed("Delete"):
			Global.current.queue_free()
	

func _physics_process(delta: float) -> void:
	pass
