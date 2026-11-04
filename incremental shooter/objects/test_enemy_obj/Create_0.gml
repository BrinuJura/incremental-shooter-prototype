// Inherit the parent event
event_inherited();
base_speed = 1
hp = 1
damage = 1
h_move = 0
v_move = 0
function death(){
    if irandom_range(0,2) == 0{
        pickup = instance_create_layer(x,y,"player",pickup_obj)
        with pickup{
            function on_pickup(){
                audio_play_sound(pickup_snd,0,0)
                player_obj.xp +=1
                instance_destroy(self)
            }
        }
    }
    instance_destroy(self)
}
