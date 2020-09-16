extends Node



func _ready():
	$personaje.inicio($Position2D.position)
	$agujeros/TrianguloTimer.start()
	

func start():
	#score = 0
	pass
	


func _on_personaje_golpeado():
	$agujeros/TrianguloTimer.stop()





