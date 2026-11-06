extends Node
## Scratch scene for trying YAJF features while rewriting.


func _ready() -> void:
	print("YAJF native loaded: ", Yajf.has_native())
	if Yajf.has_native():
		ClassDB.instantiate(&"ExampleClass").print_type(self)
