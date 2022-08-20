extends Node2D

var health = 100
var damage = 10
var screen_size = get_viewport_rect().size


func _ready():
	randomize()


func _process(delta):
	if $HealthBar.value <= 0:
		$BaseTexture.hide()
		$HealthBar.hide()


func _on_Base_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("clicked"):
		attack()


func attack():
	health -= damage
	$HealthBar.set_value(health)
	print(health)
