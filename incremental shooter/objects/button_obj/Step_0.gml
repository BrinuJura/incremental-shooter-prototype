image_index = state
switch (state) {
	case 0: 
        if collision_point(mouse_x,mouse_y,self,false,false) and mouse_check_button_pressed(mb_left){
            state = 1
        }
        break
    case 1:
        if collision_point(mouse_x,mouse_y,self,false,false) and !mouse_check_button(mb_left){
            button()
            state = 0
        }
        else if !mouse_check_button(mb_left){state = 0}
}