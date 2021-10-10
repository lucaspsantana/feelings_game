extends Node2D

onready var animation: AnimationPlayer = $AnimationPlayer

func _ready():
	pass

func _on_Button_pressed():
	$CanvasLayer.layer = -10
	animation.play("realese")
	


func _on_VisibilityNotifier2D_screen_exited():
	$BallonWithLetter.free()
