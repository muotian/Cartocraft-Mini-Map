execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_throw2_throw1/play
data modify entity @n[tag=light_green.r_weapon,type=item_display] Glowing set value 0b
data modify entity @n[tag=light_green.l_weapon,type=item_display] Glowing set value 0b
scoreboard players set @s light_green.boss.animation 7
scoreboard players set @s light_green.boss.attack_type 12
scoreboard players reset $piglin_girl_throw light_green.main.math
scoreboard players add $piglin_girl_dagger_throw light_green.main.math 1
scoreboard players add $piglin_girl_dagger_throw_late light_green.main.math 1
execute if score $piglin_girl_dagger_throw_late light_green.main.math matches 4 run scoreboard players set $piglin_girl_dagger_throw_late light_green.main.math 1
execute if score $piglin_girl_dagger_throw_late light_green.main.math matches 3 if score $piglin_girl_level light_green.main.math matches 2 run data modify entity @n[tag=light_green.r_weapon,type=item_display] glow_color_override set value 16777215
execute if score $piglin_girl_dagger_throw_late light_green.main.math matches 3 if score $piglin_girl_level light_green.main.math matches 2 run data modify entity @n[tag=light_green.r_weapon,type=item_display] Glowing set value 1b
execute if score $piglin_girl_dagger_throw_late light_green.main.math matches 3 if score $piglin_girl_level light_green.main.math matches 2 run data modify entity @n[tag=light_green.l_weapon,type=item_display] glow_color_override set value 16777215
execute if score $piglin_girl_dagger_throw_late light_green.main.math matches 3 if score $piglin_girl_level light_green.main.math matches 2 run data modify entity @n[tag=light_green.l_weapon,type=item_display] Glowing set value 1b
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value

item replace entity @n[tag=light_green.r_weapon] container.0 with stick[item_model="light_green:golden_dagger"]
item replace entity @n[tag=light_green.l_weapon] container.0 with air