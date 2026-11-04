if hp <= 0{
    if image_yscale > 0 {image_yscale -= 0.05}
    if image_yscale = 0 {game_restart()}
}

else{
    var x_move = keyboard_check(ord("D")) - keyboard_check(ord("A"))
    var y_move = keyboard_check(ord("S")) - keyboard_check(ord("W"))
    
    x_speed = x_move * move_speed
    if place_meeting(x+x_speed,y,collision_obj){
        x_speed = 0
        while !place_meeting(x+x_move,y,collision_obj){x+=x_move}
    }
    x+=x_speed
    
    y_speed = y_move * move_speed
    if place_meeting(x,y+y_speed,collision_obj){
        y_speed = 0
        while !place_meeting(x,y+y_move,collision_obj){y+=y_move}
    }
    y+=y_speed
    
    if x < 320 or x> room_width-320 or y < 180 or y > room_height-180{
        if x < 320 {
            chunk_x = -1
            x = room_width-320}
        else if x >room_width-320 {
            chunk_x =1
            x = 320}
        if y < 180 {
            chunk_y = 1
            y = room_height-180}
        else if y > room_height-180 {
            chunk_y = -1
            y = 180}
        with (teleport_obj) {
        	x += player_obj.chunk_x*-1 * (room_width-640)
            y += (room_height-360) * player_obj.chunk_y
        }
        chunk_x = 0
        chunk_y = 0
    }
    
    if xp >= needed_xp{
        xp = xp-needed_xp
        love+=1
        weapon_obj.base_reload-= weapon_obj.base_reload/5
        weapon_obj.base_damage +=0.1
        weapon_obj.base_ammo +=0.2
        weapon_obj.base_speed+=0.1
        weapon_obj.base_area+=0.1
        enemy_spawner.base_hp += love/10
        needed_xp += love
    }
}