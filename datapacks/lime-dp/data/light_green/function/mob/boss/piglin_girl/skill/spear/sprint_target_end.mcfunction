execute if score $piglin_girl_skill2 light_green.main.math matches 1 run return run function light_green:mob/boss/piglin_girl/skill/spear/sprint_target_skill2_end
execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/spear_sprint_end/play
scoreboard players set @s light_green.boss.animation 16
scoreboard players set @s light_green.boss.attack_type 33
execute at @s positioned as @n[tag=light_green.boss.piglin_girl.sprint_target] facing entity @s feet facing ^ ^ ^-1 rotated ~ 0 run tp @s ^ ^ ^-1 ~ ~
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value