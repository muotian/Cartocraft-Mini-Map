execute as @e[tag=aj.piglin_girl_head.root,limit=1] run function animated_java:piglin_girl_head/variants/no_mask/apply
execute as @e[tag=aj.piglin_girl.root,limit=1] run function animated_java:piglin_girl/variants/light/apply
execute as @e[tag=aj.piglin_girl.root,limit=1] run function animated_java:piglin_girl/animations/summon/play
scoreboard players set @s light_green.boss.animation 91
scoreboard players set @s light_green.boss.attack_type 0
execute at @n[tag=light_green.piglin_girl.summon_camera1] positioned ~ ~0.1 ~ run summon item_display ~ ~ ~ {Tags:["light_green.piglin_girl.summon_camera1_real"],teleport_duration:1}
execute at @n[tag=light_green.piglin_girl.summon_camera2] run summon item_display ~ ~ ~ {Tags:["light_green.piglin_girl.summon_camera2_real"],teleport_duration:1}
kill @n[tag=light_green.piglin_girl.summon_camera1]
kill @n[tag=light_green.piglin_girl.summon_camera2]
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
tag @s remove light_green.target_sprint_ready
tag @s remove light_green.target_sprint_ready_dagger
tag @s remove light_green.target_sprint_ready_spear
tag @s remove light_green.boss.piglin_girl.axe.jump
tag @s remove light_green.boss.piglin_girl.axe.jump.replay_ready
tag @s remove light_green.boss.piglin_girl.axe.jump_ready