extends Node2D

onready var animation: AnimationPlayer = $AnimationPlayer

func _ready():
	print("Global data em end")
	print(GlobalData.path_sprite_letter)
	if(GlobalData.path_sprite_letter):
		$BallonWithLetter/Letter/TextureRect.texture = GlobalData.path_sprite_letter

func _on_Button_pressed():
	$CanvasLayer.layer = -10
	animation.play("realese")
	yield(animation, "animation_finished")
	print("Saiu")
	$BallonWithLetter.free()
	$EndMenu.layer = 10
	$CanvasLayer/Button.disabled = true

func _on_Restart_pressed():
	print("Clicou")
	get_tree().change_scene("res://src/scenes/Wellcome.tscn")

func _on_Quit_pressed():
	print("Clicou")
	get_tree().quit()


