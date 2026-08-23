stopsound @a music
execute at @n[type=zombie,tag=icebird.boss1] run playsound black:boss1 music @a ~ ~ ~ 3 1 1
advancement grant @a only black:mob/music_2
schedule function black:bossfight/boss1/loop 220s