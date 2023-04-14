extends Node2D

@onready var portalSprite = $Portal

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	print(playerScript.levelsDone)
	if body.name == 'Player':
		if playerScript.levelsDone == 0:
			playerScript.levelsDone += 1
			var tween = create_tween()
			tween.tween_property(portalSprite, "scale", Vector2(5.0, 5.0), 1.5)
			await get_tree().create_timer(2.5).timeout
			get_tree().change_scene_to_file("res://start.tscn")
		else:
			get_tree().change_scene_to_file("res://ending.tscn")
