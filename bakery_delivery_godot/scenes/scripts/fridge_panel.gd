extends Panel

@onready var buttons := $Panel.get_children()  # Assuming all buttons are direct children of Panel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if buttons.size() > 0:
		buttons[0].grab_focus()  # Automatically select the first button


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
