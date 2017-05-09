//Step Event 
//
//Place this code in the step event.
//
//fully functional movement code for game maker studio 1.4
//
//following shaun Spalding tutorial.
//
//
//

///Get the player's input
key_right = keyboard_check(ord('D'));
key_left = -keyboard_check(ord('A'));
key_jump = keyboard_check_pressed(vk_space);
key_sprint = keyboard_check_pressed(ord('C'));
//React to inputs
move = key_left + key_right;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;

if (place_meeting(x,y+1,obj_wall_0))
{
    vsp = key_jump * -jumpspeed
}

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall_0))
{
    while(!place_meeting(x+sign(hsp),y,obj_wall_0))
    {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall_0))
{
    while(!place_meeting(x,y+sign(vsp),obj_wall_0))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

