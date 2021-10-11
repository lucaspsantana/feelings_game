extends Node2D

var feelings = ['feliz', 'com medo', 'triste']

func _ready():
	pass
	
func _physics_process(delta):
	print("Global data")
	print(GlobalData.path_sprite_letter)

func _on_Paper1_pressed():
	$container.texture = load("res://assets/sprites/objects/1background.jpg")

func _on_Paper2_pressed():
	$container.texture = load("res://assets/sprites/objects/2background.jpg")

func _on_Paper3_pressed():
	$container.texture = load("res://assets/sprites/objects/3background.jpg")

func _on_Button_pressed():
	$Label.add_font_override('font',load("res://assets/fonts/message-1.tres"))
	$Label/feeling.add_font_override('font',load("res://assets/fonts/message-1.tres"))
	$Label/Label.add_font_override('font',load("res://assets/fonts/message-1.tres"))
	$TextEdit.add_font_override('font',load("res://assets/fonts/message-1.tres"))
	
func _on_Button2_pressed():
	$Label.add_font_override('font', load("res://assets/fonts/message-2.tres"))
	$Label/feeling.add_font_override('font',load("res://assets/fonts/message-2.tres"))
	$Label/Label.add_font_override('font',load("res://assets/fonts/message-2.tres"))
	$TextEdit.add_font_override('font',load("res://assets/fonts/message-2.tres"))

func _on_Button3_pressed():
	$Label.add_font_override('font', load("res://assets/fonts/message-3.tres"))
	$Label/feeling.add_font_override('font',load("res://assets/fonts/message-3.tres"))
	$Label/Label.add_font_override('font',load("res://assets/fonts/message-3.tres"))
	$TextEdit.add_font_override('font',load("res://assets/fonts/message-3.tres"))

func _on_happy_pressed():
	print("botão")
	$Label/feeling.text = feelings[0]
	$FellingButton.texture_normal = load("res://assets/sprites/objects/happy.png")
	$Label/Label.rect_position.x = 334.487
	$CanvasLayer.layer = -10

func _on_panic_pressed():
	print("botão")
	$Label/feeling.text = feelings[1]
	$FellingButton.texture_normal = load("res://assets/sprites/objects/fear.png")
	$Label/Label.rect_position.x = 421.363
	$CanvasLayer.layer = -10

func _on_sad_pressed():
	print("botão")
	$Label/feeling.text = feelings[2]
	$FellingButton.texture_normal = load("res://assets/sprites/objects/sad.png")
	$Label/Label.rect_position.x = 334.487
	$CanvasLayer.layer = -10

func _on_FellingButton_pressed():
	$CanvasLayer.layer = 10

func _on_RealeseButton_pressed():
	GlobalData.path_sprite_letter = $container.texture
	get_tree().change_scene("res://src/scenes/End.tscn")
