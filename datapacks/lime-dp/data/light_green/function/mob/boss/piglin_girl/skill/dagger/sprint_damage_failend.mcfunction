execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_damage_sprint_failend/play
tag @s add light_green.target_sprint_dagger_end
data modify entity @n[tag=light_green.r_weapon,type=item_display] Glowing set value 0b
execute as @n[tag=light_green.boss.piglin_girl.sprint_target] run attribute @s entity_interaction_range modifier remove light_green:need_attack
function light_green:mob/boss/piglin_girl/sprint_stop
scoreboard players set @s light_green.boss.animation 11
scoreboard players set @s light_green.boss.attack_type 42
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value