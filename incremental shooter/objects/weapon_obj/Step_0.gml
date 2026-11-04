x = player_obj.x
y = player_obj.y

gun_reload -=1
if gun_reload <0{
    for (var i = 0; i < base_ammo; i++) {
    	bullet = instance_create_layer(x,y,"guns",gun_projectile_obj)
        //if instance_exists(test_enemy_obj) and i = 0 {bullet.direction = point_direction(x,y,instance_nearest(x,y,test_enemy_obj).x,instance_nearest(x,y,test_enemy_obj).y)}
         if instance_exists(test_enemy_obj){bullet.direction = point_direction(x,y,test_enemy_obj.x,test_enemy_obj.y)}
        else {bullet.direction = irandom_range(0,360)}
        bullet.delay = i*10
    }
    gun_reload = base_reload*10
}
