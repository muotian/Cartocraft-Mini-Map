execute if score $piglin_girl_spear.sweep light_green.main.math matches 2.. if entity @n[tag=light_green.boss.piglin_girl.sprint_target,type=!marker,distance=..2.5] run tag @s add light_green.boss.piglin_girl.cancel_sprint
execute if entity @s[tag=light_green.boss.piglin_girl.cancel_sprint] as @n[tag=light_green.boss.piglin_girl.sprint_target,type=!marker] run tag @s remove light_green.boss.piglin_girl.sprint_target
execute if entity @s[tag=light_green.boss.piglin_girl.cancel_sprint] run scoreboard players reset $piglin_girl_spear.sweep light_green.main.math
execute if entity @s[tag=light_green.boss.piglin_girl.cancel_sprint] run return run tag @s remove light_green.boss.piglin_girl.cancel_sprint
execute unless score $piglin_girl_spear.sweep light_green.main.math matches 2.. as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/spear_sprint/play
execute if score $piglin_girl_spear.sweep light_green.main.math matches 2.. as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/spear_sprint_sweep/play
execute unless score $piglin_girl_spear.sweep light_green.main.math matches 2.. run scoreboard players set @s light_green.boss.animation 11
execute if score $piglin_girl_spear.sweep light_green.main.math matches 2.. run scoreboard players set @s light_green.boss.animation 6

execute if score $piglin_girl_spear.sweep light_green.main.math matches 2.. run scoreboard players reset $piglin_girl_spear.sweep light_green.main.math

scoreboard players set @s light_green.boss.attack_type 27
execute as @n[tag=light_green.boss.piglin_girl.sprint_target,type=!marker] at @s run summon marker ~ ~ ~ {Tags:["light_green.boss.piglin_girl.sprint_target"]}
execute if score $piglin_girl_level light_green.main.math matches 2 as @n[tag=light_green.boss.piglin_girl.sprint_target,type=!marker] at @s run tag @s add light_green.boss.piglin_girl.sweep_target
data modify entity @n[tag=light_green.boss.piglin_girl.sprint_target] Pos[1] set from entity @n[tag=light_green.boss.piglin_girl] Pos[1]
tag @n[tag=light_green.boss.piglin_girl.sprint_target,type=!marker] remove light_green.boss.piglin_girl.sprint_target
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value