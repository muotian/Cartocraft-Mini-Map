execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/axe_jump_jump_late/play
execute as @e[tag=aj.piglin_girl_head.root,limit=1,distance=..30] run function animated_java:piglin_girl_head/animations/axe_jump_end/play
tag @s remove light_green.boss.piglin_girl.axe.jump.replay_ready
scoreboard players set @s light_green.boss.animation 39
scoreboard players set @s light_green.boss.attack_type 47
playsound minecraft:block.trial_spawner.spawn_mob hostile @a ~ ~ ~ 3 1
execute at @s positioned as @n[tag=light_green.boss.piglin_girl.sprint_target] facing entity @s feet facing ^ ^ ^-1 rotated ~ 0 run tp @s ^ ^ ^-2 ~ ~
function light_green:mob/boss/piglin_girl/sprint_stop
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value
execute store result storage light_green:smoke score int 1 run scoreboard players get $piglin_girl_axe_jump light_green.main.math
execute if score $piglin_girl_axe_jump light_green.main.math < $piglin_girl_axe_jump_target light_green.main.math run scoreboard players add $piglin_girl_axe_jump light_green.main.math 1