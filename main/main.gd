extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var coins: Array[Node] = get_tree().get_nodes_in_group("coins")
	var traps: Array[Node] = get_tree().get_nodes_in_group("traps")
	GameState.total_coins = coins.size()
	GameState.total_traps = traps.size()
	print("Total coins found: ", GameState.total_coins)
	print("Total traps found: ", GameState.total_traps)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
