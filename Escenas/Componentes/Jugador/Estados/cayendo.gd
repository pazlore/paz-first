extends Estado

func enter():
	jugador.sprite.play("Cayendo")

func physics_update(delta):
	jugador.velocity.y=jugador.gravedad
	
	var direccion = Input.get_axis("mov_izquierda", "mov_derecha")
	jugador.velocity.x = direccion * jugador.velocidad * delta
	
	if direccion < 0 and direccion != 0:
		jugador.sprite.flip_h = true
	else:
		jugador.sprite.flip_h = false
	
	jugador.move_and_slide()
	if jugador.is_on_floor():
		get_parent().siguiente_estado("Quieto")
