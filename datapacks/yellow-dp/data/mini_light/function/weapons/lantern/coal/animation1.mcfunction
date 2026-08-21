data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0.67558375f,-0.0318946f,0.183338338f,-0.5076406f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.25f,1.25f,1.5f],translation:[0.0f,0.0f,1.7f]}}

playsound minecraft:entity.player.attack.sweep hostile @a ^-1.732 ^0.1 ^1 0.7 0.3

execute store result score @s mini_light.lantern.schedule run time query gametime
scoreboard players add @s mini_light.lantern.schedule 3
