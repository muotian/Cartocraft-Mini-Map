scoreboard players reset $piglin_girl_throw light_green.main.math
execute if score $piglin_girl_level light_green.main.math matches 2 unless score $piglin_girl_dagger_jump light_green.main.math matches 1 run return run function light_green:mob/boss/piglin_girl/skill/dagger/jump
function light_green:random {math1:1,math2:10}
execute if score $piglin_girl_level light_green.main.math matches 2 unless entity @n[tag=light_green.target,distance=15..] if score $random light_green.main.math matches 1..3 unless entity @s[tag=light_green.target_sprint_dagger_end] run return run tag @s add light_green.target_sprint_ready_dagger
scoreboard players reset $piglin_girl_dagger_jump light_green.main.math
execute if score @s light_green.move_step matches 1..2 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_run_throw1/play
execute if score @s light_green.move_step matches 3 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_idle1_throw1/play
execute if score @s light_green.move_step matches 0 unless score $piglin_girl_idle light_green.main.math matches 100.. as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_idle1_throw1/play
execute if score @s light_green.move_step matches 0 if score $piglin_girl_idle light_green.main.math matches 100.. as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_idle2_throw1/play
scoreboard players set @s light_green.boss.animation 11
scoreboard players set @s light_green.boss.attack_type 11

item replace entity @n[tag=light_green.r_weapon] container.0 with stick[item_model="light_green:golden_dagger"]
item replace entity @n[tag=light_green.l_weapon] container.0 with air

attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value

#test
scoreboard players set $piglin_girl_dagger_throw_late light_green.main.math 1
execute unless score $piglin_girl_dagger_throw_target light_green.main.math matches 1.. run scoreboard players set $piglin_girl_dagger_throw_target light_green.main.math 0
scoreboard players set $piglin_girl_dagger_throw light_green.main.math 1