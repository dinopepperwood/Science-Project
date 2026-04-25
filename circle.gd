extends RigidBody2D

func _ready():
	pass

func _physics_process(delta: float) -> void:
	apply_central_force(Vector2(100,0))
