/// scr_move_state

///Movement down

/*right_key = keyboard_check(vk_right)
left_key = keyboard_check(vk_left)
up_key = keyboard_check(vk_up)
down_key = keyboard_check(vk_down)*/

scr_get_input()

if (Attacking = false) 
{

if (down_key) && (place_free(x, y+Speed)){
   y+=Speed
   sprite_index = spr_player_walk_down  
   image_speed = 0.3
   global.Direction = "Down"
      }      
///Movement up
if (up_key) && (place_free(x, y-Speed)){
   y-= Speed    
   sprite_index = spr_player_walk_up
   image_speed = 0.3
   global.Direction = "Up"
   
   }
   
   ///Movement right
if (right_key) && (place_free(x+Speed,y)){
   x+=Speed
   sprite_index = spr_player_walk_right
   image_speed = 0.3
   global.Direction = "Right"
   
   }
   
   ///Movement left
if (left_key) && (place_free(x-Speed,y)){
   x-=Speed
   sprite_index = spr_player_walk_left
   image_speed = 0.3
   global.Direction = "Left"
   
   }
   
//Sprinting 
if(shift_key)
    {
        Speed = 4
        instance_create( x,y,obj_player_motion_blur)
    }else
        {   
            Speed = 2
        }

/// Idle 
if ((!down_key)&&

(!right_key) && (!left_key) && (!up_key))
 { /*if (global.Direction = "Down")
    { sprite_index = spr_player_idle_down} 
  if (global.Direction = "Up")
    { sprite_index = spr_player_idle_up}
  if (global.Direction = "Right")
    { sprite_index = spr_player_idle_right}
  if (global.Direction = "Left")
    { sprite_index = spr_player_idle_left}
    global.Subimage= image_index
    }*/
    image_speed = 0
    image_index = 1
    }
/* Get the axis
var xaxis = (right_key - left_key) 
var yaxis = (down_key  - up_key)

// Get hspd and vspd
hspd = xaxis*spd
vspd = yaxis*spd

//Move */
//global.Subimage = image_index
}


