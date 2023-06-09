extends Node2D

func _ready():
	get_viewport().transparent = true
	get_viewport().borderless = true
	get_viewport().content_scale_aspect = 0
	Global.get_node('Info').visible = false
	
	await get_tree().create_timer(0.15).timeout
	get_tree().create_tween().tween_property($Anim.material, 'shader_parameter/value', 1, 0.25)
	await get_tree().create_timer(0.25).timeout
	
	get_tree().quit()
