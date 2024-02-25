extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("left_arrow"):
		var r = rotation
		rotation = Vector3(0,0,0)
		rotate_y(0.01+r[1])
		rotate_object_local(Vector3(0,0,1), r[2])
		
	if Input.is_action_pressed("right_arrow"):
		var r = rotation
		rotation = Vector3(0,0,0)
		rotate_object_local(Vector3(0,1,0), -0.01+r[1])
		rotate_object_local(Vector3(0,0,1), r[2])
		
	if Input.is_action_pressed("up_arrow") and rotation[2] > -0.5:
		rotate_object_local(Vector3(0,0,1), -0.01)
		
	if Input.is_action_pressed("down_arrow") and rotation[2] < 0.5:
		rotate_object_local(Vector3(0,0,1), 0.01)
