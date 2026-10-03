extends Area3D

func _ready():
    body_entered.connect(_on_body_entered)

func _on_body_entered(body):
    if body.name == "Player":
        GameManager.has_key = true
        GameManager.show_message("古びた鍵を手に入れた。")
        queue_free()
