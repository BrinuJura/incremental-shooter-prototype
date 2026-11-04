angle = point_direction(player_obj.x,player_obj.y,x,y)
distance = distance_to_object(player_obj)
if tp{
    x = player_obj.x+lengthdir_x(distance,angle)
    y = player_obj.y+lengthdir_y(distance,angle)
    tp = false
}