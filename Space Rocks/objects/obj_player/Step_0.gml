/// @description Run every frame
// You can write your code in this editor
if keyboard_check(vk_up) 
{
	motion_add(image_angle, 0.01);
}

if keyboard_check(vk_left) 
{
	image_angle += 1;
}

if keyboard_check(vk_right)
{
	image_angle -= 1;
}

move_wrap(true, true, 0);

if keyboard_check(vk_space)
{
	instance_create_layer(x, y, "Instances", obj_bullet);
	audio_play_sound(snd_shoot, 0, false, 1, 0, random_range(0.8, 1.2));
	
	if (powerup == 1)
	{
		var _bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		_bullet.direction += 100;
		_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
		_bullet.direction -= 100;
		
	}
}