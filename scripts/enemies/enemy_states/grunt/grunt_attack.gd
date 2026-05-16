extends State
class_name GruntAttack

@export var explosion_damage: float = 20.0
@export var explosion_radius: float = 2.0
@export var enemy_root: Enemy
@export var explosion_timer: Timer
@export var explosion_timer_duration: float = 0.2
const death_explosion_attack = preload("res://scenes/enemies/attacks/grunt_death_explosion.tscn")

func enter_state():
	# Spawn a new death explosion
	var explosion: AttackComponent = death_explosion_attack.instantiate()
	# Add explosion to scene tree.
	enemy_root.get_parent().add_child(explosion)
	# Make sure the explosion is where the enemy is. 
	explosion.global_position = enemy_root.global_position
	# Set explosion stats.
	explosion.set_damage(explosion_damage)
	explosion.set_radius(explosion_radius)
	print(explosion.damage_radius)
	# Setup/start explosion duration timer. 
	if explosion_timer:
		explosion_timer.wait_time = explosion_timer_duration
		explosion_timer.timeout.connect(explosion_finished)
		explosion_timer.start()

func explosion_finished(): 
	transitioned.emit(self, "GruntDie")
