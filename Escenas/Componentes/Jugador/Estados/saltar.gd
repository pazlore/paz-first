extends Estado

func enter(): 
	jugador.sprite.play("Saltando")
	jugador.velocity.y = -jugador.impulso.saltar

func _physics_process(_delta):
	if Input.is_action_just_pressed("Saltar"):
		jugador.velocity.y = -jugador.gravedad
		jugador.move_and_slide()
