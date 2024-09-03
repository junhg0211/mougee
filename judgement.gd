extends Sprite2D


const Judgements = preload("res://globals.gd").Judgements


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	transform = Transform2D(0.0, Vector2(0.5, 0.5), 0.0, Vector2(0.0, 0.0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	modulate.a = lerp(modulate.a, 0.0, 0.05)


func set_judgement(judgement: Judgements) -> void:
	modulate.a = 1.0
	
	if judgement == Judgements.MARVELOUS:
		texture = load("res://judgements_marvelous.svg")
	elif judgement == Judgements.SPLENDID:
		texture = load("res://judgements_splendid.svg")
	elif judgement == Judgements.GREAT:
		texture = load("res://judgements_great.svg")
	elif judgement == Judgements.OK:
		texture = load("res://judgements_ok.svg")
	elif judgement == Judgements.MISS:
		texture = load("res://judgements_miss.svg")
