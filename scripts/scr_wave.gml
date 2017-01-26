/// scr_wave(offset, wallSpeed, shooter1, shooter2);

var posHor = random(300) + argument[0];
var posVer = random(300) + argument[0];
var tank1 = choose(1, 2, 3, 4);
var tank2 = choose(1, 2, 3, 4);
if(tank2 == tank1) tank2 = choose(1, 2, 3, 4);

if(posHor == posVer && posVer < 100){
    posVer = random(300) + argument[0];
}

// spawn sideward wall
if(!instance_exists(obj_wall_top) || !instance_exists(obj_wall_bot)){
    switch(choose(0, 1)){
        case 0: { // to the right
            var topWall = instance_create(-16, posHor - argument[0] / 2, obj_wall_top);
            var botWall = instance_create(-16, posHor + argument[0] / 2, obj_wall_bot);
            
            with(topWall){
                spd = argument[1];
            }
            
            with(botWall){
                spd = argument[1];
            }
        } break;
        
        case 1: { // to the left
            var topWall = instance_create(room_width + 16, posHor - argument[0] / 2, obj_wall_top);
            var botWall = instance_create(room_width + 16, posHor + argument[0] / 2, obj_wall_bot);
            
            with(topWall){
                spd = -argument[1];
            }
            
            with(botWall){
                spd = -argument[1];
            }
        } break;
    }
}


// spawn upward/downward wall
if(!instance_exists(obj_wall_left) || !instance_exists(obj_wall_right)){
    switch(choose(0, 1)){
        case 0: { // to the bottom
            var leftWall = instance_create(posVer - argument[0] / 2, -16, obj_wall_left);
            var rightWall = instance_create(posVer + argument[0] / 2, -16, obj_wall_right);
            
            with(leftWall){
                spd = argument[1];
            }
            
            with(rightWall){
                spd = argument[1];
            }
        } break;
        
        case 1: { // to the top
            var leftWall = instance_create(posVer - argument[0] / 2, room_height + 16, obj_wall_left);
            var rightWall = instance_create(posVer + argument[0] / 2, room_height + 16, obj_wall_right);
            
            with(leftWall){
                spd = -argument[1];
            }
            
            with(rightWall){
                spd = -argument[1];
            }
        } break;
    }
}

if(argument[2]){
    if(instance_number(obj_shooter) < 1){
        switch(tank1){
            case 1:{ // quad 1
                instance_create(room_width - 96, 96, obj_shooter);
            } break;
            
            case 2:{ // quad 2
                instance_create(room_width - 96, room_height - 96, obj_shooter);
            } break;
            
            case 3:{ // quad 3
                instance_create(96, room_height - 96, obj_shooter);
            } break;
            
            case 4:{ // quad 4
                instance_create(96, 96, obj_shooter);
            } break;
        }
        
    }
}

if(argument[3]){
    if(instance_number(obj_shooter) < 2){
        switch(tank2){
            case 1:{ // quad 1
                instance_create(room_width - 96, 96, obj_shooter);
            } break;
            
            case 2:{ // quad 2
                instance_create(room_width - 96, room_height - 96, obj_shooter);
            } break;
            
            case 3:{ // quad 3
                instance_create(96, room_height - 96, obj_shooter);
            } break;
            
            case 4:{ // quad 4
                instance_create(96, 96, obj_shooter);
            } break;
        }
        
    }
}





