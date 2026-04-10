class_name Hand extends RefCounted

var cards: Array[Card] = []

func _init():
	for i in range(5):
		var card := Card.new()
		card.some_signal.connect(func() -> void:
			# do some stuff here
			# ...
			_do_something(card) # this causes the memory leak! comment it out and things are fine
			pass
		)
		cards.append(card)

func _do_something(card: Card) -> void:
	pass
