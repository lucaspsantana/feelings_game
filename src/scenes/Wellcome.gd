extends Node2D

onready var animation: AnimationPlayer = $AnimationPlayer
var texts = ["Nem todos os dias são iguais, às vezes estamos bem, mas às vezes não.", 
" É dificil entender os sentimentos, não é verdade?", "Sabe o que ajuda a entender o que sentimos?",
"Contar pra alguém ou mesmo escrever.", "Vamos tentar?"]

var currentIndex = 0;

func _ready():
	$Area2D/Label.text = texts[0]
	pass
	
func changeLabel():
	var length = texts.size()
	currentIndex = currentIndex + 1
	if(currentIndex >=length):
		get_tree().change_scene("res://src/scenes/Write.tscn");
	else:
		$Area2D/Label.text = texts[currentIndex]

func _on_TextureButton_pressed():
	animation.play("next")
