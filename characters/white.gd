extends CharacterBody2D

const SPEED = 100.0

@onready var anim = $AnimatedSprite2D

func _ready():
	#anim.play("idle")
	pass

func _physics_process(_delta):
	
	velocity = Vector2.ZERO
	var direction: Vector2 = Vector2(
		Input.get_axis("move_left", "move_right"),
		Input.get_axis("move_up", "move_down")
		)
	if direction:
		anim.play("move")
		if direction.x < 0:
			anim.flip_h = true
		else:
			anim.flip_h = false
	else:
		anim.play("idle")
	
	velocity = direction.normalized() * SPEED
	
	move_and_slide()
	
	for index in get_slide_collision_count():
		var collision = get_slide_collision(index)
		if collision.get_collider() is GreyOne:
			collision.get_collider().velocity = direction * (SPEED/4)
			collision.get_collider().direction = direction
