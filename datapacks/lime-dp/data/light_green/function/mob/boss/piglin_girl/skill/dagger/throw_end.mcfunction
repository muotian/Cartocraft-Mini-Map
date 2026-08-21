function light_green:random {math1:1,math2:2}
execute if score @s light_green.boss.attack_type matches 11 if score $random light_green.main.math matches 1 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_throw1_axe/play
execute if score @s light_green.boss.attack_type matches 11 if score $random light_green.main.math matches 2 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_throw1_spear/play
execute if score @s light_green.boss.attack_type matches 12 if score $random light_green.main.math matches 1 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_throw1_axe/play
execute if score @s light_green.boss.attack_type matches 13 if score $random light_green.main.math matches 1 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_throw2_axe/play
execute if score @s light_green.boss.attack_type matches 12 if score $random light_green.main.math matches 2 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_throw1_spear/play
execute if score @s light_green.boss.attack_type matches 13 if score $random light_green.main.math matches 2 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_throw2_spear/play
execute if entity @s[tag=light_green.target_sprint_dagger_end] as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_throw1_dagger/play

data modify entity @n[tag=light_green.r_weapon,type=item_display] Glowing set value 0b
data modify entity @n[tag=light_green.l_weapon,type=item_display] Glowing set value 0b

scoreboard players set @s light_green.boss.animation 11
scoreboard players set @s light_green.boss.attack_type 14
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value

execute if score $random light_green.main.math matches 1 unless entity @s[tag=light_green.target_sprint_dagger_end] run scoreboard players set $piglin_girl_weapon light_green.main.math 1
execute if score $random light_green.main.math matches 2 unless entity @s[tag=light_green.target_sprint_dagger_end] run scoreboard players set $piglin_girl_weapon light_green.main.math 3

execute if score $random light_green.main.math matches 1 unless entity @s[tag=light_green.target_sprint_dagger_end] run function light_green:mob/boss/piglin_girl/skill/axe/replace
execute if score $random light_green.main.math matches 2 unless entity @s[tag=light_green.target_sprint_dagger_end] run function light_green:mob/boss/piglin_girl/skill/spear/replace

execute unless entity @s[tag=light_green.target_sprint_dagger_end] run scoreboard players reset $piglin_girl_dagger_throw_target light_green.main.math
#execute if entity @s[tag=light_green.target_sprint_dagger_end] run function light_green:mob/boss/piglin_girl/skill/dagger/teleport/0
tag @s remove light_green.target_sprint_dagger_end