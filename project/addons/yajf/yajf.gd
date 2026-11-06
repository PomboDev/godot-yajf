class_name Yajf
extends RefCounted
## Public entry point for YAJF (Yet Another Juice Framework).
##
## GDScript owns the API; hot paths move into the native library
## (yajf.gdextension) only when a benchmark says they need to.

## Internal settings (replace the old editor settings panel).
const DEFAULT_DURATION := 0.25
const DEFAULT_TRANS := Tween.TRANS_QUAD
const DEFAULT_EASE := Tween.EASE_OUT


## True when the native library loaded on this platform.
static func has_native() -> bool:
	return ClassDB.class_exists(&"ExampleClass")
