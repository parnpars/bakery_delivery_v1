extends Area2D
const DialogueScript = preload("res://scenes/scripts/dialogue_canvas.gd")

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
