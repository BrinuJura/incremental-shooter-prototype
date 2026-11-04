event_inherited()
if collision_point(x,y,player_obj,false,false){
    on_pickup()
}
if collision_circle(x,y,weapon_obj.base_area*32,player_obj,false,false){
    follow = true
}
if follow{
    direction = point_direction(x,y,player_obj.x,player_obj.y)
    speed = 3
}