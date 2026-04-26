extends RigidBody2D
@onready var label: Label = $Label
var force = 100
@onready var outline: ReferenceRect = $Outline
func _ready():
	pass

func _physics_process(delta: float) -> void:
	label.text = "Calculated Acceleration: "+str(snapped(force/self.mass,0.01))+" m/s²\nSpeed: "+str(snapped(linear_velocity.length(),0.01)) +"m/s\nMass: "+str(self.mass)+" kg\nForce: " + str(force) + " N"
	if(Global.current == self):
		outline.visible=true
	else:
		outline.visible=false


func _on_click_pressed() -> void:
	if(Global.current == self):
		print("Hi")
	if(Global.current != self):
		Global.current = self
