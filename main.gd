class_name Main extends Control

@onready var player_scn := preload("res://player.tscn")
@onready var create_button := $Button

func _ready() -> void:
	create_button.pressed.connect(_spawn)

func _spawn() -> void:
	var player := player_scn.instantiate()
	add_child(player)
