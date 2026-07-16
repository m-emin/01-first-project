extends Node2D

@export var coin_spawner: PackedScene = preload("res://game_elements/coin/coin.tscn")
@export var trap_spawner: PackedScene = preload("res://game_elements/trap/trap.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	spawner(10)
	var coins: Array[Node] = get_tree().get_nodes_in_group("coins")
	var traps: Array[Node] = get_tree().get_nodes_in_group("traps")
	GameState.total_coins = coins.size()
	GameState.total_traps = traps.size()
	print("Total coins found: ", GameState.total_coins)
	print("Total traps found: ", GameState.total_traps)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	

func spawner(amount: int):
	
	for times in amount:
		var new_coin
		var new_trap
		
		new_coin = coin_spawner.instantiate()
		add_child(new_coin)
		new_coin.add_to_group("coins")
		new_coin.position.x = randi_range(-300, -200)
		new_coin.position.y = randi_range(-100, 60)
		
		new_trap = trap_spawner.instantiate()
		add_child(new_trap)
		new_trap.add_to_group("traps")
		new_trap.position.x = randi_range(0, 150)
		new_trap.position.y = randi_range(0, 100)
