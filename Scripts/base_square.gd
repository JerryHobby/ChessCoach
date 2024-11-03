extends Node
@export var dark:bool = false

@onready var base_square: TextureRect = $BaseSquare

var dark_color = Color8(90,66,00)
var light_color = Color8(200,150,100)
var hover_color = Color8(255,200,150)

var square_color = light_color
var highlight_color = hover_color


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if dark:
		square_color = dark_color
		highlight_color = hover_color
	else:
		square_color = light_color
		highlight_color = hover_color
	
	base_square.modulate = square_color


func _on_mouse_entered() -> void:
	base_square.modulate = hover_color


func _on_mouse_exited() -> void:
	base_square.modulate = square_color
