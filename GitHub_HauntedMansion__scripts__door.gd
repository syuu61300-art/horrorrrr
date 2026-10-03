extends StaticBody3D

@export var locked := true
var opened := false

func interact():
    if locked:
        if GameManager.has_key:
            locked = false
            open_door()
        else:
            GameManager.show_message("鍵がかかっている……")
    else:
        open_door()

func open_door():
    if opened:
        return
    opened = true
    var tween = create_tween()
    tween.tween_property(self, "rotation_degrees:y", rotation_degrees.y + 90.0, 0.6)
