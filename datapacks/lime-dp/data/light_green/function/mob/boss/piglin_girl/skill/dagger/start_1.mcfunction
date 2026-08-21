#execute if score $piglin_girl_skill2 light_green.main.math matches 1 run scoreboard players set $piglin_girl_skill2 light_green.main.math 2
execute if score @s light_green.move_step matches 1..2 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_run_attack1/play
execute if score @s light_green.move_step matches 3 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_idle1_attack1/play
execute if score @s light_green.move_step matches 0 unless score $piglin_girl_idle light_green.main.math matches 100.. as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_idle1_attack1/play
execute if score @s light_green.move_step matches 0 if score $piglin_girl_idle light_green.main.math matches 100.. as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_idle2_attack1/play
scoreboard players set @s light_green.boss.animation 8
scoreboard players set @s light_green.boss.attack_type 6
function light_green:random {math1:1,math2:3}
execute if score $piglin_girl_skill2 light_green.main.math matches 1 run scoreboard players set $random light_green.main.math 1
scoreboard players operation $random light_green.main.math *= $3 light_green.main.math
scoreboard players operation $piglin_girl_dagger_target light_green.main.math = $random light_green.main.math
scoreboard players reset $piglin_girl_dagger light_green.main.math
scoreboard players add $piglin_girl_dagger light_green.main.math 1
execute unless score @s light_green.move_step matches 1..2 run attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value