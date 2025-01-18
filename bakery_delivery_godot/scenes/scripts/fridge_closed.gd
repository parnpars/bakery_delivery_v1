extends TileMapLayer
var is_visible = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.visible = is_visible
	
func set_visibility(set_visibile:bool) -> void:
	is_visible = set_visibile
