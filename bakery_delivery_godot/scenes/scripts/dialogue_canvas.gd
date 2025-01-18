extends CanvasLayer
static var curr_dish = "";
static var is_visible = false;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.visible = is_visible
	
func set_visibility(make_visible:bool):
	is_visible = make_visible;
	
	
