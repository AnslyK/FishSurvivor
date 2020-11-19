extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var health_over = $Healthover
onready var health_under = $HealthUnder
onready var update_tween = $Tween

# Called when the node enters the scene tree for the first time.
func _on_health_updated(health, amount):
	health_over.value = health
	update_tween.interpolate_property(health_under, "value", health_under.value, health, 0.4, Tween.TRANS_SINE,Tween.EASE_IN_OUT)
	
func _on_max_health_updated(max_health):
	health_over.max_value = max_health
	health_under.max_value = max_health


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass