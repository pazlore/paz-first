extends CharacterBody2D

@export var speed = 20.0
@export var gravedad = 250.0

func _physics_process(_delta):
	var direccion = Input.get_axis("mover_izquierda","mover_derecha")
	#print (direccion) 
	velocity.x = direccion * speed
	move_and_slide()
