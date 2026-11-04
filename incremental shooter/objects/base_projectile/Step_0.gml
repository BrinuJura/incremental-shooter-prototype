event_inherited()
if collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,test_enemy_obj,false,false){
    on_impact(collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,test_enemy_obj,false,false))
}
