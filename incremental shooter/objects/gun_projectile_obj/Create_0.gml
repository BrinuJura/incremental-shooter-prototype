event_inherited()
speed = weapon_obj.base_speed
direction = 0
damage = 5
delay = 0
function on_impact(enemy){
    audio_play_sound(enemy_hurt_spr,0,0)
    enemy.hp -= damage
    instance_destroy(self)
}