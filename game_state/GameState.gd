extends Node

@export var win_screen: PackedScene = preload("res://game_state/win_screen.tscn")
@export var lose_screen: PackedScene = preload("res://game_state/lose_screen.tscn")

var score: int = 0
var total_coins: int = 0
var total_traps: int = 0

func add_point():
	score += 1
	print("Score is now: ", score)
	if score >= total_coins:
		get_tree().call_deferred("change_scene_to_packed", win_screen)
		self.call_deferred("reset_score")
		
func sub_point():
	score -= 1
	print("Score is now: ", score)
	if score < 0:
		get_tree().call_deferred("change_scene_to_packed", lose_screen)
		self.call_deferred("reset_score")
		
func reset_score():
	print("Current score is:", score)
	score = 0
	print("Score resetted to:", score)
