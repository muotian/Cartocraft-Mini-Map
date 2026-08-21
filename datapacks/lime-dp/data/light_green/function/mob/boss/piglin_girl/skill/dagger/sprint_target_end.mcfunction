execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_sprint_end/play
execute as @e[tag=aj.piglin_girl_head.root,limit=1,distance=..30] run function animated_java:piglin_girl_head/animations/dagger_sprint_end/play
scoreboard players set @s light_green.boss.animation 11
scoreboard players set @s light_green.boss.attack_type 31
playsound minecraft:event.mob_effect.raid_omen hostile @a ~ ~ ~ 1 2
function light_green:mob/boss/piglin_girl/sprint_end
tag @e[tag=light_green.boss.piglin_girl.sprint_target,type=!#light_green:no_hp] remove light_green.boss.piglin_girl.sprint_target
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value