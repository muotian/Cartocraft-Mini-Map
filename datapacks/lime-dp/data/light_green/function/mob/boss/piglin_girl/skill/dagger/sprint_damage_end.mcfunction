execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_damage_sprint_end/play
execute as @n[tag=light_green.boss.piglin_girl.sprint_target] run attribute @s entity_interaction_range modifier remove light_green:need_attack
data modify entity @n[tag=light_green.r_weapon,type=item_display] Glowing set value 0b
tag @s add light_green.target_sprint_dagger_end
scoreboard players set @s light_green.boss.animation 9
scoreboard players set @s light_green.boss.attack_type 41
execute at @s positioned as @n[tag=light_green.boss.piglin_girl.sprint_target] facing entity @s feet facing ^ ^ ^-1 rotated ~ 0 run tp @s ^ ^ ^-1 ~ ~
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value