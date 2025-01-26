extends Area2D
const OpenFridgeScript = preload("res://scenes/scripts/fridge_open.gd")
const CloseFridgeScript = preload("res://scenes/scripts/fridge_closed.gd")
const FridgeDialogue = preload("res://scenes/scripts/fridge_dialogue.gd")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if (body.is_in_group)("player"):
		open_fridge(body)


func _on_body_exited(body: Node2D) -> void:
	if (body.is_in_group)("player"):
		close_fridge(body)

func open_fridge(body: Node2D) -> void:
	var open_fridge_instance = OpenFridgeScript.new()
	open_fridge_instance.set_visibility(true)
	closed_fridge_visible(false)
	open_fridge_instance.free()
	handle_fridge_dialogue(true)
	
		
func close_fridge(body: Node2D) -> void:
	var open_fridge_instance = OpenFridgeScript.new()
	open_fridge_instance.set_visibility(false)
	closed_fridge_visible(true)
	open_fridge_instance.free()
	handle_fridge_dialogue(false)

func closed_fridge_visible(is_visible: bool) -> void:
	var fridge_close_script = CloseFridgeScript.new()
	fridge_close_script.set_visibility(is_visible)
	fridge_close_script.free()
	
func handle_fridge_dialogue(is_visible: bool) -> void:
	var fridge_dialogue_script = FridgeDialogue.new();
	fridge_dialogue_script.set_visibility(is_visible);
	fridge_dialogue_script.free();
	
