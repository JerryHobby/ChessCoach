extends Control

var console_text = ""
var puzzleDb
@export var commandNode: LineEdit 
@export var consoleNode: TextEdit 
@export var buttonNode: Button 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	UciEngine.write("help")
	puzzleDb = Puzzles.new()
	#get_tree().get_root().size_changed.connect(resize)

#func resize():
	#print("Screen resized")



func _process(_delta: float) -> void:
	#console_text = console_text + UciEngine.read()
	consoleNode.text = UciEngine.output_text
	consoleNode.scroll_vertical = consoleNode.get_v_scroll_bar().max_value


func get_new_fen() -> String:
	return puzzleDb.get_random_fen()[0]["FEN"]


func display_fen(fen: String):
	var command = "position fen " + fen + " moves"
	UciEngine.write(command)
	UciEngine.write("d")


func _on_button_pressed() -> void:
	UciEngine.write(commandNode.text)
	print("Sending:", commandNode.text)
	commandNode.text = ""


func _on_command_in_text_submitted(new_text: String) -> void:
	UciEngine.write(new_text)
	print("Sending:", new_text)
	commandNode.text = ""


func _on_new_fen_pressed() -> void:
	display_fen(get_new_fen())


func _on_move_pressed() -> void:
	UciEngine.write("go movetime 1000")
