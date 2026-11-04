base_reload = 6
base_damage = 10
base_speed = 5
base_area = 1
base_ammo = 1
gun_reload = base_reload*10/(player_obj.love+1)
are_weapon = instance_create_layer(x,y,"guns",area_weapon_obj)