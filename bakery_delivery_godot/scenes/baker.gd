extends CharacterBody2D
@onready var _animated_sprite = $AnimatedSprite2D

const SPEED = 100.0
const JUMP_VELOCITY = -400.0

var last_direction = ""

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	#if not is_on_floor():
		#velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_x = Input.get_axis("walk_left", "walk_right")
	if direction_x:
		velocity.x = direction_x * SPEED
		if Input.is_action_pressed("walk_left"):
				_animated_sprite.play("walk_left")
				last_direction = "walk_left"
		elif Input.is_action_pressed("walk_right"):
			_animated_sprite.play("walk_right")
			last_direction = "walk_left"
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		_animated_sprite.stop()
		
	var direction_y = Input.get_axis("walk_up", "walk_down")
	if direction_y:
		velocity.y = direction_y * SPEED
		if last_direction == "walk_left":
			_animated_sprite.play("walk_left")
		elif last_direction == "walk_right":
			_animated_sprite.play("walk_right")
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
