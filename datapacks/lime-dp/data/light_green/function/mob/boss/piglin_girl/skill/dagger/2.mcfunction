execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_attack2/play
data modify entity @n[tag=light_green.r_weapon,type=item_display] glow_color_override set value 16777215
data modify entity @n[tag=light_green.r_weapon,type=item_display] Glowing set value 1b
scoreboard players set @s light_green.boss.animation 7
scoreboard players set @s light_green.boss.attack_type 7
scoreboard players add $piglin_girl_dagger light_green.main.math 1