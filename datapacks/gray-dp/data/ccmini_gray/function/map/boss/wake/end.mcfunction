execute as @a run attribute @s minecraft:movement_speed modifier remove gray.boss.wake.movespeed
execute as @a run attribute @s minecraft:jump_strength modifier remove gray.boss.wake.jump
scoreboard players set $eventtimer.boss_wake gray.map_event -1
scoreboard players set $state gray.map_event 4