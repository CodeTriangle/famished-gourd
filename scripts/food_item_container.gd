extends Node


const FOODS_PATH = "res://resources/foods/"

var info_paths: PackedStringArray
var infos: Array[FoodInfo]
var food_item_scene = preload("res://scenes/food_item.tscn")


var locations = [
	Vector2(270.0, 570.0),
	Vector2(474.0, 510.0),
	Vector2(678.0, 510.0),
	Vector2(882.0, 570.0)
]

func _init() -> void:
	self.info_paths = ResourceLoader.list_directory(FOODS_PATH)
	for filename in self.info_paths:
		ResourceLoader.load_threaded_request(FOODS_PATH + filename)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_foods()


func spawn_foods() -> void:
	if len(infos) == 0:
		for food in info_paths:
			self.infos.push_back(ResourceLoader.load_threaded_get(FOODS_PATH + food))
	for loc in locations:
		var food: FoodItem = food_item_scene.instantiate()
		
		food.info = self.infos[randi_range(0, len(self.info_paths) - 1)]

		food.position = loc - 0.5 * food.size
		self.add_child(food)
