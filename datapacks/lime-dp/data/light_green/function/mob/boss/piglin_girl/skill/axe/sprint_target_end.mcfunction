execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/axe_sprint_end/play
scoreboard players set @s light_green.boss.animation 11
scoreboard players set @s light_green.boss.attack_type 29
execute at @s positioned as @n[tag=light_green.boss.piglin_girl.sprint_target] facing entity @s feet facing ^ ^ ^-1 rotated ~ 0 run tp @s ^ ^ ^-1 ~ ~
function light_green:mob/boss/piglin_girl/sprint_end
tag @e[tag=light_green.boss.piglin_girl.sprint_target,type=!#light_green:no_hp] remove light_green.boss.piglin_girl.sprint_target
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value