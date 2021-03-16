extends RigidBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var hp = 69
var mana = 69
var dmg = 69


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func get_save_stats():
	return {
		'filename' : get_filename(),
		'parent' : get_parent().get_path(),
		'x_pos' : global_transform.origin.x,
		'y_pos' : global_transform.origin.y,
		'z_pos' : global_transform.origin.z,
		'stats': {
			'hp' : hp,
			'mana' :mana,
			'dmg' :dmg
		}
	}

func load_save_stats(stats):
	global_transform.origin = Vector3(stats.x_pos,stats.y_pos,stats.z_pos)
	hp = stats.stats.hp
	mana = stats.stats.mana
	dmg = stats.stats.dmg
