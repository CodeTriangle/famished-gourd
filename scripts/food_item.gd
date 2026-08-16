extends TextureButton

@export var info: FoodInfo

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$nameplayer.stream = info.sound;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	$nameplayer.play()
	print('gave him the ' + info.name)
