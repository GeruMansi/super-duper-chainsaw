extends CharacterBody2D

const SPEED = 75.0
@onready var anim = $AnimatedSprite2D

func _physics_process(_delta):

	velocity = Vector2.ZERO
	var direction = Vector2(
		Input.get_axis("move_right", "move_left"),
		Input.get_axis("move_down", "move_up")
	)
	
	if direction:
		anim.play("move")
		if direction.x > 0:
			anim.flip_h = false
		else:
			anim.flip_h = true
		velocity = direction.normalized() * SPEED
	else:
		anim.play("idle")

	move_and_slide()
	
	for index in get_slide_collision_count():
		var collision = get_slide_collision(index)
		if collision.get_collider() is GreyOne:
			collision.get_collider().velocity = direction * (SPEED/4)
			collision.get_collider().direction = direction
