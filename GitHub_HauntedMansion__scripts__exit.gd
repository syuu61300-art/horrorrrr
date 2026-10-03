extends StaticBody3D

func interact():
    if GameManager.has_key:
        GameManager.win()
    else:
        GameManager.show_message("出口は鍵で閉ざされている……")
