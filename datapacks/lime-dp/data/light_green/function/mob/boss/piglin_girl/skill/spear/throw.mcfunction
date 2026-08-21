execute if score @s light_green.move_step matches 1..2 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/spear_run_throw/play
execute if score @s light_green.move_step matches 3 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/spear_idle1_throw/play
execute if score @s light_green.move_step matches 0 unless score $piglin_girl_idle light_green.main.math matches 100.. as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/spear_idle1_throw/play
execute if score @s light_green.move_step matches 0 if score $piglin_girl_idle light_green.main.math matches 100.. as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/spear_idle2_throw/play
scoreboard players set @s light_green.boss.animation 16
scoreboard players set @s light_green.boss.attack_type 21
scoreboard players reset $piglin_girl_throw light_green.main.math
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value