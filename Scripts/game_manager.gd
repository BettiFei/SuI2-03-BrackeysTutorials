extends Node

@onready var victory_overlay: CanvasLayer = $VictoryOverlay
@onready var ui: CanvasLayer = $"../UI"



func _ready() -> void:
	victory_overlay.hide()
	ui.show()


func _on_ui_victory() -> void:
	victory_overlay.show()
	get_tree().paused = true


func _on_replay_button_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()


func _on_quit_button_pressed() -> void:
	get_tree().paused = false
	get_tree().quit()
