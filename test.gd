extends Node2D

func _ready():
	pass

func _input(event: InputEvent) -> void:
	if Global.current != null:
		if(MOUSE_BUTTON_WHEEL_UP):
			Global.current.mass += 1
		elif(MOUSE_BUTTON_WHEEL_DOWN):
			Global.current.mass -=1

func _physics_process(delta: float) -> void:
	pass
