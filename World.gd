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
const LEVEL_12 = preload("res://levels/level_12.tscn")
const END = preload("res://end.tscn")

@onready var music = $AudioStreamPlayer
@onready var boop = $AudioStreamPlayer2
@onready var down = $AudioStreamPlayer3
@onready var restart = $AudioStreamPlayer4
@onready var label1 = $Label
@onready var label2 = $Label2

func change_level(path):
	
	var timer1 = get_tree().create_timer(.5)
	await timer1.timeout
	
	get_tree().change_scene_to_packed(path)
	
	var timer2 = get_tree().create_timer(.5)
	await timer2.timeout
