tag @s remove light_green.target_sprint_ready_dagger
execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_damage_sprint/play
data modify entity @n[tag=light_green.r_weapon,type=item_display] glow_color_override set value 16777215
data modify entity @n[tag=light_green.r_weapon,type=item_display] Glowing set value 1b
scoreboard players set @s light_green.boss.animation 16
scoreboard players set @s light_green.boss.attack_type 40
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value