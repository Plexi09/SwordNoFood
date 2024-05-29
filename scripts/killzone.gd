extends Area2D

@onready var timer = $Timer
@onready var audio_player = $AudioStreamPlayer

func _on_body_entered(body):
	timer.start()
	audio_player.play()

func _on_timer_timeout():
	get_tree().reload_current_scene()
