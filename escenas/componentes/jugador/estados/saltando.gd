extends Estado


func enter():
	jugador.sprite.play("Saltando")
	jugador.velocity.y = -jugador.impulso_salto

func physics_update(delta):
	jugador.velocity.y += jugador.gravedad * delta
	jugador.move_and_slide()
	
	var direccion = Input.get_axis("mov_izquierda","mov_derecha")
	jugador.velocity.x = direccion * jugador.velocidad * delta
	
	if jugador.velocity.y > jugador.gravedad:
		get_parent().siguiente_estado("Cayendo")
	
	if jugador.is_on_floor():
		get_parent().siguiente_estado("Quieto")
