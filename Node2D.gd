extends Node2D

const ANIMATION_STEP_TIME = 30

func _ready():
	var label = get_node("Label")
	var tween = get_node("Tween")
	label.set_text(str(0))
	var tween2 = Tween.new()
	var parent = get_tree().get_root().get_child(0)
	parent.add_child(tween2)
#	print (tween2.get_path() , tween.get_path())
	
func update_animation_label(label, current_value, end_value, tween):
#	print("update_animation_label %s %s" % [label.name , label.get_class()])
	if tween.is_processing() :
		tween.stop()

	tween.interpolate_method(label, "to_text", current_value, end_value, ANIMATION_STEP_TIME,Tween.TRANS_QUAD, Tween.EASE_OUT)
	tween.start()
#	print (tween)
