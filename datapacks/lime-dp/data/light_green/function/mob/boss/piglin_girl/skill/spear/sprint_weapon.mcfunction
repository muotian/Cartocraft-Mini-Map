execute if score $piglin_girl_skill2 light_green.main.math matches 1 run return run function light_green:mob/boss/piglin_girl/skill/spear/sprint_weapon_skill2
execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/spear_sprint2/play
scoreboard players set @s light_green.boss.animation 16
scoreboard players set @s light_green.boss.attack_type 28
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value