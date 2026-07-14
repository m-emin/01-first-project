extends Node

var score: int = 0
var total_coins: int = 0

func add_point():
	score += 1
	print("Score is now: ", score)
	if score >= total_coins:
		get_tree().call_deferred("change_scene_to_file", "res://win_screen.tscn")
