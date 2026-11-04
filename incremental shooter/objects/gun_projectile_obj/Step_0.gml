// Inherit the parent event
event_inherited();
delay -=1
if delay > 0{
    image_alpha = 0.01
    x = player_obj.x
    y = weapon_obj.y
    speed = 0}
if delay = 0{image_alpha = 1}
else {speed = weapon_obj.base_speed}
image_alpha -= 0.005
if image_alpha <= 0 {instance_destroy(self)}

