extends Label

func _ready():
	print (get_parent().get_parent().get_node("Tween"))
	pass

func to_text(value):
#	print("to_text %d" % value)
	set_text(str(int(value)))
