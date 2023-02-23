extends "res://addons/gut/test.gd"


func test_application() -> void:
	assert_eq(_get("application/config/name"), "Archipelago")
	assert_eq(_get("application/run/main_scene"), "res://Main.tscn")
	assert_eq(_get("application/config/icon"), "res://assets/textures/icons/64x64.png")


func test_display() -> void:
	assert_eq(_get("display/window/size/width"), 320)
	assert_eq(_get("display/window/size/height"), 180)
	assert_eq(_get("display/window/stretch/mode"), "2d")
	assert_eq(_get("display/window/stretch/aspect"), "keep")


func test_editor_plugins() -> void:
	assert_eq(_get("editor_plugins/enabled"), PoolStringArray(["res://addons/gut/plugin.cfg"]))


func test_gui() -> void:
	assert_true(_get("gui/common/drop_mouse_on_gui_input_disabled"))


func test_physics() -> void:
	assert_true(_get("physics/common/enable_pause_aware_picking"))


func test_rendering() -> void:
	assert_eq(_get("rendering/environment/default_environment"), "res://resources/environments/default.tres")


func _get(property: String): return ProjectSettings.get(property)
