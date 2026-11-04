// Inherit the parent event
event_inherited();
damage = weapon_obj.base_damage/100
function on_impact(enemy){
    with (test_enemy_obj) {
    	if collision_point(x,y,area_weapon_obj,false,false){hp -= area_weapon_obj.damage}
    }
}
image_xscale = 2
image_yscale = 2
image_alpha = 0.4