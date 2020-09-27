extends KinematicBody2D

export var velocity = Vector2(0,10)

func _ready():
	pass

func _physics_process(delta):
	position += velocity
	if position.y > get_viewport_rect().size.y + 30:
		queue_free()

func _on_Area2D_body_entered(body):
	body.queue_free()
