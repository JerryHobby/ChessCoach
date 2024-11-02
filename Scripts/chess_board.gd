extends Node

const PIECE = {
	"Empty": " ",
	"White Pawn": "P",
	"White Rook": "R",
	"White Knight": "N",
	"White Bishop": "B",
	"White Queen": "Q",
	"White King": "K",
	"Black Pawn": "p",
	"Black Rook": "r",
	"Black Knight": "n",
	"Black Bishop": "b",
	"Black Queen": "q",
	"Black King": "k",
}

var theme = "res://Assets/chessThemes/pieces/set1/"

var chess_pieces = [
	{
		"Empty": "res://Assets/chessThemes/pieces/set0/nothing.png",
		"White Pawn": "res://Assets/chessThemes/pieces/set0/whitePawn.png",
		"White Rook": "res://Assets/chessThemes/pieces/set0/whiteRook.png",
		"White Knight": "res://Assets/chessThemes/pieces/set0/whiteKnight.png",
		"White Bishop": "res://Assets/chessThemes/pieces/set0/whiteBishop.png",
		"White Queen": "res://Assets/chessThemes/pieces/set0/whiteQueen.png",
		"White King": "res://Assets/chessThemes/pieces/set0/whiteKing.png",
		"Black Pawn": "res://Assets/chessThemes/pieces/set0/blackPawn.png",
		"Black Rook": "res://Assets/chessThemes/pieces/set0/blackRook.png",
		"Black Knight": "res://Assets/chessThemes/pieces/set0/blackKnight.png",
		"Black Bishop": "res://Assets/chessThemes/pieces/set0/blackBishop.png",
		"Black Queen": "res://Assets/chessThemes/pieces/set0/blackQueen.png",
		"Black King": "res://Assets/chessThemes/pieces/set0/blackKing.png",
	},
	{
		"Empty": "res://Assets/chessThemes/pieces/set0/nothing.png",
		"White Pawn": "res://Assets/chessThemes/pieces/set1/whitePawn.png",
		"White Rook": "res://Assets/chessThemes/pieces/set1/whiteRook.png",
		"White Knight": "res://Assets/chessThemes/pieces/set1/whiteKnight.png",
		"White Bishop": "res://Assets/chessThemes/pieces/set1/whiteBishop.png",
		"White Queen": "res://Assets/chessThemes/pieces/set1/whiteQueen.png",
		"White King": "res://Assets/chessThemes/pieces/set1/whiteKing.png",
		"Black Pawn": "res://Assets/chessThemes/pieces/set1/blackPawn.png",
		"Black Rook": "res://Assets/chessThemes/pieces/set1/blackRook.png",
		"Black Knight": "res://Assets/chessThemes/pieces/set1/blackKnight.png",
		"Black Bishop": "res://Assets/chessThemes/pieces/set1/blackBishop.png",
		"Black Queen": "res://Assets/chessThemes/pieces/set1/blackQueen.png",
		"Black King": "res://Assets/chessThemes/pieces/set1/blackKing.png",
	}
]

var new_game = "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1"
var game_board = [
	["","","","","","","",""],
	["","","","","","","",""],
	["","","","","","","",""],
	["","","","","","","",""],
	["","","","","","","",""],
	["","","","","","","",""],
	["","","","","","","",""],
	["","","","","","","",""],
	]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	setup_board()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func setup_board(fen:String = new_game):
	var row = 0
	var col = 0

	for ch in fen:
		if ch == ' ':
			break
		if ch in "prbnkqPRBNKQ":
			game_board[row][col] = ch
			col = col + 1
		if ch in "12345678":
			for p in range(col, col+int(ch)):
				game_board[row][p] = " "
			col = col + int(ch)
		if ch == "/":
			row = row + 1
			col = 0

	for r in game_board:
		print(r)


func draw_board():
	pass
