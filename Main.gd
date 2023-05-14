extends Node2D

@onready var anim = $AnimationPlayer
@onready var sprite = $AnimationPlayer/AnimatedSprite2D

func _ready():
	var timer = get_tree().create_timer(1)
	await  timer.timeout
	anim.play("animation1")
	await  anim.animation_finished
	var timer2 = get_tree().create_timer(5)
	await timer2.timeout
	sprite.animation = "black_left"
	sprite.flip_h = true
	anim.play("animation2")

func _process(_delta):
	pass

func _on_texture_button_pressed():
	World.boop.playing = true
	World.change_level(World.LEVEL_0)
