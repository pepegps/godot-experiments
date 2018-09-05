extends Node2D

const ANIMATION_STEP_TIME = 10

func _ready():
	var label = get_node("Label")
	var label2 = get_node("Label2")
	var tween = get_node("Tween")
	var target_value = 100
	label.set_text(str(0))
	update_animation_label(label,int(label.get_text()), target_value, tween)
	var tween2 = Tween.new()
	var parent = get_tree().get_root().get_child(0)
	parent.add_child(tween2)
#	print (tween2.get_path() , tween.get_path())
	
func update_animation_label(label, current_value, end_value, tween):
#	print("update_animation_label %s %s" % [label.name , label.get_class()])
	tween.interpolate_method(label, "to_text", current_value, end_value, ANIMATION_STEP_TIME,Tween.TRANS_QUAD, Tween.EASE_OUT)
	tween.start()
#	print (tween)
