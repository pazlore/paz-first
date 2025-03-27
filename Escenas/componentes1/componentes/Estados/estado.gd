#quieto
extends Estado

func enter():
	pass

func update(delta):
	jugador.velocity.y = jugador.gravedad
	jugador.move_and_slide()

if not jugador.is_on_floor():
	get parent().ir_a_estado_siguiente()
