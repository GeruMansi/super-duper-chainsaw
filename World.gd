extends CanvasLayer

const LEVEL_0 = preload("res://levels/level_0.tscn")
const LEVEL_1 = preload("res://levels/level_1.tscn")
const LEVEL_2 = preload("res://levels/level_2.tscn")
const LEVEL_3 = preload("res://levels/level_3.tscn")
const LEVEL_4 = preload("res://levels/level_4.tscn")
const LEVEL_5 = preload("res://levels/level_5.tscn")
const LEVEL_6 = preload("res://levels/level_6.tscn")
const LEVEL_7 = preload("res://levels/level_7.tscn")
const LEVEL_8 = preload("res://levels/level_8.tscn")
const LEVEL_9 = preload("res://levels/level_9.tscn")
const LEVEL_10 = preload("res://levels/level_10.tscn")
const LEVEL_11 = preload("res://levels/level_11.tscn")

@onready var music = $AudioStreamPlayer
@onready var boop = $AudioStreamPlayer2
@onready var down = $AudioStreamPlayer3
@onready var restart = $AudioStreamPlayer4


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if get_tree().get_root().get_child(2).name == "Level2":
		$Label.show()

func change_level(path):
	get_tree().create_timer(.5)
	
	get_tree().change_scene_to_packed(path)
	
	get_tree().create_timer(.5)
