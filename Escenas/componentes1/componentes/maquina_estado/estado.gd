#ESTADO
extends Node
class_name Estado 

var jugador : CharacterBody2D 

func _ready():
	jugador = get_parent().jugador

func enter():
	pass 
	
func update (_delta):
	pass 
	
func _physics_process(delta):
	pass
func exit():
	pass


func _physics_update(delta):
	jugador.move_and_slide() 
	
