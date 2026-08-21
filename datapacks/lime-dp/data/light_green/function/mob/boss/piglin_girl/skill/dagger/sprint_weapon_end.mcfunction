execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_sprint_end/play
execute as @e[tag=aj.piglin_girl_head.root,limit=1,distance=..30] run function animated_java:piglin_girl_head/animations/dagger_sprint_end/play
playsound minecraft:event.mob_effect.raid_omen hostile @a ~ ~ ~ 1 2
scoreboard players set @s light_green.boss.animation 11
scoreboard players set @s light_green.boss.attack_type 32
execute if entity @n[tag=light_green.boss.piglin_girl.sprint_target,tag=light_green.boss.piglin_girl.axe] run scoreboard players set $piglin_girl_weapon_ready light_green.main.math 1
execute if entity @n[tag=light_green.boss.piglin_girl.sprint_target,tag=light_green.boss.piglin_girl.dagger] run scoreboard players set $piglin_girl_weapon_ready light_green.main.math 2
execute if entity @n[tag=light_green.boss.piglin_girl.sprint_target,tag=light_green.boss.piglin_girl.spear] run scoreboard players set $piglin_girl_weapon_ready light_green.main.math 3
execute at @s positioned as @n[tag=light_green.boss.piglin_girl.sprint_target] run tp @s ^ ^ ^-1 ~ ~
function light_green:mob/boss/piglin_girl/sprint_end
kill @n[tag=light_green.boss.piglin_girl.sprint_target,type=item_display]
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value