scoreboard players set @s light_green.boss.animation 231
scoreboard players set @s light_green.boss.attack_type -3
data modify entity @n[tag=light_green.r_weapon,type=item_display] Glowing set value 0b
function light_green:mob/boss/piglin_girl/skill/axe/replace
data modify entity @s NoAI set value 1b
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value
execute as @e[tag=light_green.crack,type=marker] run function light_green:mob/boss/piglin_girl/crack/kill
scoreboard players reset $piglin_girl_sprint_axe light_green.main.math
kill @e[tag=light_green.boss.piglin_girl.dagger,scores={light_green.mob.ai=2..3}]
execute as @e[tag=light_green.boss.piglin_girl.shadow] at @s run particle minecraft:smoke ~ ~ ~ 0.25 1 0.25 0.01 500
kill @e[tag=light_green.boss.piglin_girl.shadow]
kill @e[tag=light_green.boss.piglin_girl.throw_target]
bossbar set light_green:piglin_girl name {text:"\ue007",font:"light_green:custom",shadow_color:0}
tag @s remove light_green.target_sprint_ready
tag @s remove light_green.target_sprint_ready_dagger
tag @s remove light_green.target_sprint_ready_spear
tag @s remove light_green.boss.piglin_girl.axe.jump
tag @s remove light_green.boss.piglin_girl.axe.jump.replay_ready
tag @s remove light_green.boss.piglin_girl.axe.jump_ready