function light_green:random {math1:1,math2:2}
execute if score $random light_green.main.math matches 1 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/spear_throw_axe/play
execute if score $random light_green.main.math matches 2 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/spear_throw_dagger/play

scoreboard players set @s light_green.boss.animation 11
scoreboard players set @s light_green.boss.attack_type 22
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value

execute if score $random light_green.main.math matches 1 run scoreboard players set $piglin_girl_weapon light_green.main.math 1
execute if score $random light_green.main.math matches 2 run scoreboard players set $piglin_girl_weapon light_green.main.math 2

execute if score $random light_green.main.math matches 1 run function light_green:mob/boss/piglin_girl/skill/axe/replace
execute if score $random light_green.main.math matches 2 run function light_green:mob/boss/piglin_girl/skill/dagger/replace