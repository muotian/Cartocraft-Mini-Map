function light_green:random {math1:1,math2:2}
execute if score $random light_green.main.math matches 1 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/axe_throw2_dagger/play
execute if score $random light_green.main.math matches 2 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/axe_throw2_spear/play
execute if score $random light_green.main.math matches 1 run item replace entity @n[tag=light_green.r_weapon] container.0 with stick[item_model="light_green:golden_dagger"]
execute if score $random light_green.main.math matches 2 run item replace entity @n[tag=light_green.r_weapon] container.0 with stick[item_model="light_green:golden_spear"]
scoreboard players operation $piglin_girl_weapon_ready light_green.main.math = $random light_green.main.math
scoreboard players set @s light_green.boss.animation 16
scoreboard players set @s light_green.boss.attack_type 5
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value
scoreboard players reset $piglin_girl_throw light_green.main.math