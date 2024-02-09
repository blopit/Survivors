extends Area2D


# the direction and magnitide of the hitbox
@export var magnitude_direction: Vector2 = Vector2(0, 0)

enum HitboxType {
	BLANK
}

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("Hitboxes")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	print(body.name)
	pass # Replace with function body.
