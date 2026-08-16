class_name FoodItem
extends TextureButton


@export var info: FoodInfo



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.texture_normal = info.texture
	$nameplayer.stream = info.sound


func _on_pressed() -> void:
	$nameplayer.play()
	print('gave him the ' + info.name)
