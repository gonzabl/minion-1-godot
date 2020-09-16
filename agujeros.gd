extends Node2D

onready var triangulo = preload ("res://triangulo.tscn")

func _ready():
	pass


func _on_TrianguloTimer_timeout():
	var t = triangulo.instance()
	var target = get_parent().get_node("personaje")
	t.matar = target.position # obtengo la posicion del enemigo pero no lo sigue solo apunta
	t.position = $PositionAgujero.position
	add_child(t)
	t.show()
