extends Area2D
const DialogueScript = preload("res://scenes/scripts/dialogue_canvas.gd")
const OvenOnScript = preload("res://scenes/scripts/oven_on.gd")
const OvenOffScript = preload("res://scenes/scripts/oven_off.gd")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if (body.is_in_group)("player"):
		var dialogue_instance = DialogueScript.new()
		dialogue_instance.set_visibility(true)
		dialogue_instance.free()
		


func _on_body_exited(body: Node2D) -> void:
	if (body.is_in_group)("player"):
		var dialogue_instance = DialogueScript.new()
		dialogue_instance.set_visibility(false)
		dialogue_instance.free()

#func cook(body: Node2D) -> void:
	
		
#func turn_on_oven(body: Node2D) -> void:
	#var oven_on_instance = OvenOnScript.new()
	#oven_on_instance.set_visibility(false)
	#oven_on_instance.free()
#
#func turn_off_oven(is_visible: bool) -> void:
	#var oven_off_instance = OvenOffScript.new()
	#oven_off_instance.set_visibility(is_visible)
	#oven_off_instance.free()
