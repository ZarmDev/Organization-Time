extends Node2D

@onready var panelLabel = $CanvasLayer/Panel/Label
@onready var panel = $CanvasLayer/Panel
@onready var score = $CanvasLayer/Score
@onready var welcomeScreen = $CanvasLayer/welcomeScreen

func _ready():
	welcomeScreen.visible = true
	panel.visible = false
	speak('')

func _process(delta):
	score.text = 'Score: ' + str(playerScript.score) + '/10'

func speak(value):
	if value == '':
		panel.visible = false
		return false
	panelLabel.text = value
	panel.visible = true


func _on_sign_1_body_entered(body):
	if body.name == 'Player':
		speak('Mom says clean your room!!! Collect all the socks.')
		await get_tree().create_timer(2.5).timeout
		speak('')


func _on_button_pressed():
	welcomeScreen.queue_free()


func _on_sign_2_body_entered(body):
	if body.name == 'Player':
		speak('Leap of faith?')
		await get_tree().create_timer(2.5).timeout
		speak('')


func _on_sign_3_body_entered(body):
	if body.name == 'Player':
		speak('Hope you survive 😂')
		await get_tree().create_timer(2.5).timeout
		speak('')
