extends CharacterBody2D
@onready var animated_sprite_2d = $AnimatedSprite2D


const SPEED = 100.0

func _physics_process(delta):
	var hor_direction =  Input.get_axis("left","right")
	var ver_direction =  Input.get_axis("up","down")
	if hor_direction:
		velocity.x = hor_direction * SPEED 
	else:
		velocity.x = hor_direction * SPEED 
		
	if ver_direction:
		velocity.y = ver_direction * SPEED 
	else:
		velocity.y = ver_direction * SPEED 
	
	if hor_direction == 0 && ver_direction == 0:
		animated_sprite_2d.play("idea")
	else:
		animated_sprite_2d.play("walk")
		
	if hor_direction > 0:
		animated_sprite_2d.flip_h = false;
	elif hor_direction < 0:
		animated_sprite_2d.flip_h = true;
		
		
	move_and_slide()
