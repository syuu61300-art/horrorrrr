extends CharacterBody3D

@export var speed := 4.5
@export var mouse_sensitivity := 0.0025
@export var gravity := 14.0

var camera: Camera3D
var flashlight: SpotLight3D
var ray: RayCast3D

func _ready():
    camera = $Head/Camera3D
    flashlight = $Head/Camera3D/Flashlight
    ray = $Head/Camera3D/InteractRay
    Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _unhandled_input(event):
    if event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
        rotate_y(-event.relative.x * mouse_sensitivity)
        $Head.rotate_x(-event.relative.y * mouse_sensitivity)
        $Head.rotation.x = clamp($Head.rotation.x, deg_to_rad(-85), deg_to_rad(85))
    if event is InputEventKey and event.pressed and event.keycode == KEY_ESCAPE:
        Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
    if event is InputEventMouseButton and event.pressed and Input.mouse_mode == Input.MOUSE_MODE_VISIBLE:
        Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
    if event.is_action_pressed("flashlight"):
        flashlight.visible = not flashlight.visible
    if event.is_action_pressed("interact") and ray.is_colliding():
        var target = ray.get_collider()
        if target and target.has_method("interact"):
            target.interact()

func _physics_process(delta):
    var input_vec = Input.get_vector("move_left", "move_right", "move_forward", "move_back")
    var direction = (transform.basis * Vector3(input_vec.x, 0, input_vec.y)).normalized()
    velocity.x = direction.x * speed
    velocity.z = direction.z * speed
    if not is_on_floor():
        velocity.y -= gravity * delta
    else:
        velocity.y = -0.2
    move_and_slide()
