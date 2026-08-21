execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_attack3/play
data modify entity @n[tag=light_green.r_weapon,type=item_display] Glowing set value 0b
scoreboard players set @s light_green.boss.animation 7
scoreboard players set @s light_green.boss.attack_type 8
scoreboard players add $piglin_girl_dagger light_green.main.math 1