extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	var green = $TileMap.get_used_cells_by_id(0)
	print(green)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
