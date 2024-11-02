extends ColorRect

@export var bgcolor:Color
var pieceTexture:Texture
var sprite:Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	color = bgcolor
	sprite.texture = pieceTexture
