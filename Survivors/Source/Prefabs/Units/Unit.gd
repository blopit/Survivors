extends RigidBody2D

@export var ggdf:int = 0

func _draw():
	draw_circle(Vector2(0, 0), 50, Color(1, 0, 0))

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("Units")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

