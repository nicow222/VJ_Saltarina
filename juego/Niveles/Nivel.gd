extends Node
signal abrir_portal()

var numero_llaves = 0
var contenedor_llaves


func _ready():
	contenedor_llaves = get_node_or_null("Zanahorias")
	if contenedor_llaves != null:
		numero_llaves_nivel()
		

func numero_llaves_nivel():
	numero_llaves = contenedor_llaves.get_child_count()
	for llave in contenedor_llaves.get_children():
		llave.connect("consumida", self, "llaves_restantes")
	
func llaves_restantes():
	numero_llaves -= 1
	if numero_llaves == 0:
		emit_signal("abrir_portal")
		#abrir portal

