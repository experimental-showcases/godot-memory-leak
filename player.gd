class_name Player extends Button

var hand: Hand

func _ready() -> void:
	pressed.connect(_destroy_self)
	hand = Hand.new()

func _destroy_self() -> void:
	queue_free()
