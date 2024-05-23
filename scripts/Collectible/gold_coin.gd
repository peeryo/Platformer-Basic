extends Area2D

@onready var sprite = $AnimatedSprite2D

func _ready():
	sprite.play("idle")


func _on_body_entered(_body):
	sprite.play("collect")
	$CollectSFX.play() 

func _on_sprite_animation_finished():
	queue_free()
