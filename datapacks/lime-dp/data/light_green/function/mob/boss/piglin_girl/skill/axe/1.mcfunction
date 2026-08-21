execute if score @s light_green.move_step matches 1..2 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/axe_run_attack1/play
execute if score @s light_green.move_step matches 3 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/axe_idle1_attack1/play
execute if score @s light_green.move_step matches 0 unless score $piglin_girl_idle light_green.main.math matches 100.. as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/axe_idle1_attack1/play
execute if score @s light_green.move_step matches 0 if score $piglin_girl_idle light_green.main.math matches 100.. as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/axe_idle2_attack1/play
scoreboard players set @s light_green.boss.animation 16
scoreboard players set @s light_green.boss.attack_type 1
execute if score @s light_green.move_step matches 1..2 run attribute @s movement_speed modifier add light_green:piglin_girl_attack -0.5 add_multiplied_total
execute unless score @s light_green.move_step matches 1..2 run attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value