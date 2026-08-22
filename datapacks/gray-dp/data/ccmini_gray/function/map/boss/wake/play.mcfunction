scoreboard players set $eventtimer.boss_wake gray.map_event 500
playsound minecraft:entity.zombie.attack_wooden_door block @a ~ ~ ~ 1 1
effect give @a minecraft:blindness 2 0 true
execute as @a at @s run function ccmini_gray:map/boss/wake/kb
execute as @a run attribute @s minecraft:movement_speed modifier add gray.boss.wake.movespeed -10 add_value
execute as @a run attribute @s minecraft:jump_strength modifier add gray.boss.wake.jump -10 add_value
execute as @a if score @s gray.gopr_mode matches 2 run function ccmini_gray:skills/grit_of_pristine_revival/take_off
execute as @a if score @s gray.gopr_mode matches 2 run scoreboard players set @s gray.gopr_mode 0