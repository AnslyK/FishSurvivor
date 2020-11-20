extends Area2D

export var speed = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	var velocity = Vector2()
	velocity.y += 1
	velocity = velocity.normalized() * speed
	position += velocity * delta


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
