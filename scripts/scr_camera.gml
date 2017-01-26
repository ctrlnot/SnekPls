if(!lose){
    lose = 1;
    //obj_camera.lose = 1;
    if (instance_exists(obj_wall_bot)) obj_wall_bot.lose = 1;
    if (instance_exists(obj_wall_left)) obj_wall_left.lose = 1;
    if (instance_exists(obj_wall_right)) obj_wall_right.lose = 1;
    if (instance_exists(obj_wall_top)) obj_wall_top.lose = 1;
    if (instance_exists(obj_shooter)) obj_shooter.lose = 1;
    if (instance_exists(obj_bullet)) obj_bullet.lose = 1;
    obj_snek.control = 0;
}
