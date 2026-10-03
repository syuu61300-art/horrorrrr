extends Node

var has_key := false
var message_label: Label

func show_message(message: String):
    if message_label:
        message_label.text = message
        await get_tree().create_timer(2.5).timeout
        if message_label and message_label.text == message:
            message_label.text = ""

func win():
    if message_label:
        message_label.text = "脱出成功――あなたは屋敷から逃げ出した。"
    get_tree().paused = true
