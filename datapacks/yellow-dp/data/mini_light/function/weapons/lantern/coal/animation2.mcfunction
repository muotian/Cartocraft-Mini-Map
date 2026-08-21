data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.7857807f,-0.4904212f,0.089276776f,-0.3661493f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5000012f,1.5000007f],translation:[1.732f,0.0f,1.0f]}}

execute as @p[tag=mini_light.coal_lantern_player] run function mini_light:weapons/lantern/coal/calculate_damage

execute positioned ^ ^ ^2 as @e[type=#mini_light:mobs,type=!player,distance=..4] run function mini_light:weapons/lantern/coal/_damage with storage mini_light:weapons/damage value
execute positioned ^ ^ ^2 run effect give @e[type=#mini_light:mobs,type=!player,distance=..4] slowness 5 5

playsound minecraft:block.lantern.break hostile @a ^ ^0.1 ^2 1 0.9
playsound minecraft:entity.zombie.attack_wooden_door hostile @a ^ ^0.1 ^2 0.3 1.544

execute store result score @s mini_light.lantern.schedule run time query gametime
scoreboard players add @s mini_light.lantern.schedule 4