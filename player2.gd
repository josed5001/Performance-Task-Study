extends Area2D


@onready var collision_shape_2d = $CollisionShape2D

@export var speed = 400

func _physics_process(delta):
	var velocity =  Vector2.ZERO
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	position += velocity * delta
	


func _on_body_entered(body):
	hide()
