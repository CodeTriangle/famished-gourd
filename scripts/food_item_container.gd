extends Node


var cheese = preload("res://resources/foods/cheese.tres")
var food_item_scene = preload("res://scenes/food_item.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_foods()


func spawn_foods() -> void:
	var food = food_item_scene.instantiate()
	food.info = cheese
	self.add_child(food)
