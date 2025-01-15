extends Area2D
const DialogueScript = preload("res://scenes/dialogue_canvas.gd")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	var dialogue_instance = DialogueScript.new()
	if (body.is_in_group)("player"):
		dialogue_instance._set_visibility(true)
		
