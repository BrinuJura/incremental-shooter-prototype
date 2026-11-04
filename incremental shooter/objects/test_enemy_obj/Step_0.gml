// Inherit the parent event
event_inherited();
if hp <= 0 {death()}
h_move =  sign(player_obj.x-x)
v_move = sign(player_obj.y-y)

var h_speed = h_move*base_speed
if place_meeting(x+h_speed,y,test_enemy_obj){
    h_speed = 0
}
if place_meeting(x,y,test_enemy_obj){
    if x > collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,test_enemy_obj,false,true).x{h_speed = 1}
    else {h_speed = -1}
}
x += h_speed

var v_speed = v_move*base_speed
if place_meeting(x,y+v_speed,test_enemy_obj){
    v_speed = 0
}
if place_meeting(x,y,test_enemy_obj){
    if y > collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,test_enemy_obj,false,true).y {v_speed=1}
    else {v_speed = -1}
}
y+=v_speed

if place_meeting(x,y,player_obj){
    player_obj.hp -= damage
}

if !collision_rectangle(player_obj.x-350,player_obj.y-230,player_obj.x+350,player_obj.y+230,self,false,false){instance_destroy(self)}