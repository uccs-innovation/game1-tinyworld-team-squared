/// @description Insert description here
// You can write your code in this editor
audio_stop_all()


if room_exists(room_next(room)){
    room_goto_next();
}

audio_play_sound(snd_Level1Music, 10, true);