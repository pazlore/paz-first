#CORRIENDO
extends Estado
func physics_update(_delta):
	jugador.velocity.y = jugador.gravedad 
	jugador.move_and_slide()

func enter():
	jugador.sprite.play("Corriendo")

func _physics_process(delta):
	if Input.is_action_pressed("mover_derecha"):
		jugador.velocity.x = jugador.velocidad
		jugador.move_and_slide()
		jugador.sprite.flip_h = false
	elif Input.is_action_pressed("mover_izquierda"):
		jugador.velocity.x = -jugador.velocidad
		jugador.move_and_slide()
		jugador.sprite.flip_h = true
	else:
		get_parent().ir_a_estado_siguiente("Quieto")
		
