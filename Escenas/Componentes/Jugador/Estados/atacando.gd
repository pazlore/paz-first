extends Estado

@export var hitbox : Area2D

func enter():
	jugador.sprite.play("Atacando")  

func physics_update(delta):
	
	#TAREA
	# el jugador una vez comenzado la accion de atacar,
	# va borrar todos los enemigos que esten
	# tocando su hitbox.
	
	#funciones que van a necesitar:
	
	# jugador.is_in_group("X")
	# regresa true si esta dentro del grupo X,
	# si no esta regresa false.
	
	# jugador.queue_free()
	# queue_free es una funcion que tienen
	# todos los nodos para borrarse.
	
	# for loop inicial para iterar por cuepos	
	
	for cuerpo in hitbox.get_overlapping_bodies():
		if cuerpo.is_in_group("Enemigos"):
			cuerpo.queue_free()
	
	jugador.velocity.x = 0  
	jugador.move_and_slide()
	
	if not jugador.sprite.is_playing():
		get_parent().siguiente_estado("Quieto")
