execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/axe_jump_start/play
kill @e[tag=light_green.damage_locator,type=marker]
tag @e[tag=light_green.damage_locator,type=!marker] remove light_green.damage_locator
tag @s remove light_green.boss.piglin_girl.axe.jump_ready
tag @s add light_green.boss.piglin_girl.axe.jump
scoreboard players set @s light_green.boss.animation 15
scoreboard players set @s light_green.boss.attack_type 43
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value
execute if score $piglin_girl_axe_jump light_green.main.math < $piglin_girl_axe_jump_target light_green.main.math run scoreboard players add $piglin_girl_axe_jump light_green.main.math 1