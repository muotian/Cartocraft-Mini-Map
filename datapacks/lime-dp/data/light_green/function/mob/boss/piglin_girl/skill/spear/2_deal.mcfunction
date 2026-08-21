execute unless entity @n[tag=light_green.boss.piglin_girl.target] at @s run summon marker ~ ~ ~ {Tags:["light_green.boss.piglin_girl.target"]}
execute if score @s light_green.boss.attack_type matches 15 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/spear_attack2_deal/play
execute if score @s light_green.boss.attack_type matches 33 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/spear_sprint_deal/play
execute if score @s light_green.boss.attack_type matches 33 run scoreboard players set $piglin_girl_spear.sprint light_green.main.math 1
execute if score @s light_green.boss.attack_type matches 15 run scoreboard players set @s light_green.boss.animation 26
execute if score @s light_green.boss.attack_type matches 33 run scoreboard players set @s light_green.boss.animation 16
scoreboard players add $piglin_girl_spear.sweep light_green.main.math 1
scoreboard players set @s light_green.boss.attack_type 38
kill @e[tag=light_green.boss.piglin_girl.sprint_target,type=marker]
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value