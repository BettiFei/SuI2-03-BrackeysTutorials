extends CanvasLayer

var due = 0
var collected = 0

@onready var amount_due: Label = $HBoxContainer/VBoxContainer2/AmountDue
@onready var amount_collected: Label = $HBoxContainer/VBoxContainer2/AmountCollected

signal victory

func _ready() -> void:
	due = get_tree().get_nodes_in_group("coin").size()
	amount_due.text = str(due)
	collected = 0
	amount_collected.text = str(collected)

func _physics_process(_delta: float) -> void:
	if due == collected:
		victory.emit()

func _on_player_coin_collected() -> void:
	collected += 1
	amount_collected.text = str(collected)
