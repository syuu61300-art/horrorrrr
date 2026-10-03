extends Node

func _ready():
    var gm = get_parent().get_node("GameManager")
    gm.message_label = get_parent().get_node("UI/Message")
