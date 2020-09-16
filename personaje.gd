
extends Area2D
signal golpeado

export (int) var speed = 350

var target := Vector2()

func _ready():
	pass


func _input(event):
	if event is InputEventMouse:
		target = event.position
		

func _process(delta):
	var target = get_local_mouse_position().normalized()
	
	position += target * delta * speed
	
	
func inicio(pos):
	position = pos
	target = pos
	$CollisionShape2D.disabled = false


func _on_personaje_area_entered(area): # funciona para cuando lo golpean pero al recoger 
										#el rombo tambien lo afecta
		#hide()
		#emit_signal("golpeado")
		#$CollisionShape2D.set_deferred("disable",true)
		pass



