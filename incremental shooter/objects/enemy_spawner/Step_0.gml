if instance_number(test_enemy_obj) < 20{
    var dir = irandom_range(0,1)
    if dir = 0{
        _y = irandom_range(0,1)*400+player_obj.y-180
        _x = player_obj.x+irandom_range(0,640)}
    else {
        _x = irandom_range(0,1)*680+player_obj.x-360
        _y = player_obj.x+irandom_range(0,180)
    }
    enemy = instance_create_layer(_x,_y,"enemies",test_enemy_obj)
    enemy.hp = base_hp
}