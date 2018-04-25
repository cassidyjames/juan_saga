extends "res://levels/level_00/level_00.gd"
func _ready():
	$screen/game_screen/animator.connect("animation_finished", 
		self, "_on_game_screen_animation_finished")
	
func _on_dialogue_changed(to):
	match to:
		0:
			get_tree().set_pause(true)
		1:
			var pos = $computer.global_position
			pos.y -= 200
			$camera.tween_position(pos)
		4:
			$camera.tween_position($rocket/center.global_position)
		5:
			get_tree().set_pause(false)