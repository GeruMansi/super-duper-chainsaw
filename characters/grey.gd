extends CharacterBody2D
class_name GreyOne

@onready var anim = $AnimatedSprite2D
var direction: Vector2

func _physics_process(_delta):
	
	if velocity != Vector2.ZERO:
		anim.play("move")
		if direction.x < 0:
			anim.flip_h = true
		else:
			anim.flip_h = false
	else:
		anim.play("idle")
	
	if direction.length() > 1:
		direction = direction.normalized()
	
	move_and_slide()
	
	if get_slide_collision_count() == 0:
		velocity = Vector2.ZERO
