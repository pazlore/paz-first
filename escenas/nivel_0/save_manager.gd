extends Node

var datos_guardado : Dictionary = {"monedas" : 100, "nombre" : "Carlos"}

func _ready():
	Globales.save_manager = self 
	guardar()

func guardar():
	#var json = JSON.new()
	datos_guardado.monedas = Globales.jugador.monedas 
	var archivo_guardado = FileAccess.open("user://archivo_guardado.save",FileAccess.WRITE) 
	archivo_guardado.store_line(JSON.stringify(datos_guardado))

func cargar(): 
	var archivo_guardado = FileAccess.open("user://archivo_guardado.save",FileAccess.WRITE)
	var texto = archivo_guardado.get_line()
	var json = JSON.new() 
	json.parse(texto) 
	print(json.data)
	var diccionario = json.delta 
