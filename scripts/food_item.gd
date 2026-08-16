class_name FoodItem
extends TextureButton


@export var info: FoodInfo


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var nameplayer: AudioStreamPlayer = get_node("nameplayer")
	nameplayer.stream = info.sound


func _on_pressed() -> void:
	$nameplayer.play()
	print('gave him the ' + info.name)
