extends Control


var vida = 100
var max_vida = 300
var magia = 20
var max_magia = 100
var monedas = 0

@onready var barra_vida = $MarginContainer/BarrasContainer/VidaContainer/ProgressBar
@onready var texto_vida = $MarginContainer/BarrasContainer/VidaContainer/Label
@onready var barra_magia = $MarginContainer/BarrasContainer/MagiaContainer/ProgressBar2
@onready var texto_magia = $MarginContainer/BarrasContainer/MagiaContainer/Label
@onready var texto_monedas = $MarginContainer/MonedasContainer/Label

func _ready():
	actualizar_valores()

func _process(delta):
	barra_vida.value = vida
	texto_vida.text = str(vida)
	barra_magia.value = magia
	texto_magia.text = str(magia)
	texto_monedas.text = str(monedas)

func actualizar_valores():
	barra_vida.max_value = max_vida
	barra_magia.max_value = max_magia
	texto_monedas 
