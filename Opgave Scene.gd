extends Control
export (NodePath) var OptionButtonPath1
export (NodePath) var OptionButtonPath2
export (NodePath) var OptionButtonPath3
export (NodePath) var OptionButtonPath4
export (NodePath) var OptionButtonPath5
onready var OptionButton = get_node(OptionButtonPath1)
onready var OptionButton2 = get_node(OptionButtonPath2)
onready var OptionButton3 = get_node(OptionButtonPath3)
onready var OptionButton4 = get_node(OptionButtonPath4)
onready var OptionButton5 = get_node(OptionButtonPath5)

var AnswerRight = false
var AnswerRight2 = false
var AnswerRight3 = false
var AnswerRight4 = false
var AnswerRigth5 = false

func _ready():
	add_items()

func add_items():
	#Question1
	OptionButton.add_item("---Vælg---")
	OptionButton.add_item("Udenfor")
	OptionButton.add_item("Uden for")
	
	#Question2
	OptionButton2.add_item("---Vælg---")
	OptionButton2.add_item("nedad")
	OptionButton2.add_item("ned ad")
	
	#Question3
	OptionButton3.add_item("---Vælg---")
	OptionButton3.add_item("nedenfor")
	OptionButton3.add_item("neden for")
	
	#Question4
	OptionButton4.add_item("---Vælg---")
	OptionButton4.add_item("bedst kendt")
	OptionButton4.add_item("bedstkendt")
	
	#Question5
	OptionButton5.add_item("---Vælg---")
	OptionButton5.add_item("handels folk")
	OptionButton5.add_item("handelsfolk")
	
func _on_OptionButton_item_selected(Answer1):
	print(Answer1)
	if Answer1 == 1:
		AnswerRight = true
	else:
		AnswerRight = false

func _on_OptionButton2_item_selected(Answer2):
	print(Answer2)
	if Answer2 == 1:
		AnswerRight2 = true
	else:
		AnswerRight2 = false


func _on_OptionButton3_item_selected(Answer3):
	print(Answer3)
	if Answer3 == 1:
		AnswerRight3 = true
	else:
		AnswerRight3 = false


func _on_OptionButton4_item_selected(Answer4):
	print(Answer4)
	print(AnswerRight4)
	if Answer4 == 1:
		AnswerRight4 = true
	else:
		AnswerRight4 = false


func _on_OptionButton5_item_selected(Answer5):
	print(Answer5)
	if Answer5 == 1:
		AnswerRigth5 = true
	else:
		AnswerRigth5 = false

func PointCheck():
	if AnswerRight == true && AnswerRight2 == true && AnswerRight3 == true && AnswerRight4 == true && AnswerRigth5 == true:
		GlobalValues.points += 10


func _physics_process(delta):
	print(GlobalValues.points)
	
	
	
	
