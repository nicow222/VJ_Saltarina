extends Control

onready var etiqueta_vidas = $ContenedorVidas/Cantidad
onready var etiqueta_monedas_oro = $ContenedorMonedasOro/Cantidad
onready var etiqueta_monedas_plata = $ContenedorMonedasPlata/Cantidad
onready var etiqueta_monedas_bronze = $ContenedorMonedasBronze/Cantidad
onready var etiqueta_llaves = $ContenedorLlaves/Cantidad

func _ready():
# warning-ignore:return_value_discarded
	DatosPlayer.connect("actualizar_datos", self, "actualizar_hud")
	actualizar_hud()

func actualizar_hud():
	etiqueta_vidas.text = "%s" % DatosPlayer.vidas
	etiqueta_monedas_bronze.text = "%s" % DatosPlayer.monedas_bronze
	etiqueta_monedas_plata.text = "%s" % DatosPlayer.monedas_plata
	etiqueta_monedas_oro.text = "%s" % DatosPlayer.monedas_oro
	etiqueta_llaves.text = "%s" % DatosPlayer.llaves
	
