extends RigidBody2D
@onready var label: Label = $Label
var force = 100
@onready var outline: ReferenceRect = $Outline
func _ready():
	pass

func _physics_process(delta: float) -> void:
	label.text = "Acceleration: "+str(snapped(force/self.mass,0.01))+" m/s²\nSpeed: "+str(snapped(linear_velocity.length(),0.01)) +"m/s"
	apply_central_force(Vector2(force,0))
	if(Global.current == self):
		outline.visible=true
	else:
		outline.visible=false


func _on_click_pressed() -> void:
	Global.current = self
