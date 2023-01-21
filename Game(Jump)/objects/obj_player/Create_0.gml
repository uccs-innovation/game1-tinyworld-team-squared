/// @description Initialize variables and constants

//// Adjustible Variables TINKER WITH IF DESIRED ////
//Movement
jump_speed = 65; //Change this to change how fast the player jumps
grav = 6; //Change to adjust how fast player falls, NO MAX FALL SPEED CHECK, BE CAREFUL

//Health System
MAX_HP = 100; //MAX HP, set to 25 for insta-death
i_frames = 60; //How long the player is invincible after taking damage, in frames (1/60 sec)
damage_taken = -25;

//// Set Variables DO NOT CHANGE ////
//Movement
prev_v = 0
prev_h = 0;

//Health System
current_HP = MAX_HP; //Player's current Health
is_invincible = false;
i_count = 0; //counter
player_dead = false;

//Animation
facing = 0;