extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var coins: Array[Node] = get_tree().get_nodes_in_group("coins")
	GameState.total_coins = coins.size()
	print("Total coins found: ", GameState.total_coins)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
