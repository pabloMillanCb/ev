extends Camera3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("left_arrow"):
		get_parent().get_parent().rotate_object_local(Vector3(0,1,0), -0.01)
		
	if Input.is_action_pressed("right_arrow"):	
		get_parent().get_parent().rotate_object_local(Vector3(0,1,0), 0.01)
		
	if Input.is_action_pressed("up_arrow") and get_parent().rotation[2] > -0.5:
		get_parent().rotate_object_local(Vector3(0,0,1), -0.01)
		
	if Input.is_action_pressed("down_arrow") and get_parent().rotation[2] < 0.5:
		get_parent().rotate_object_local(Vector3(0,0,1), 0.01)
