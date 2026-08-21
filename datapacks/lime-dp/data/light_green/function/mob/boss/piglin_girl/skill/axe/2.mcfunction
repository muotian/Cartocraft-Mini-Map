execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/axe_attack2/play
scoreboard players set @s light_green.boss.animation 17
scoreboard players set @s light_green.boss.attack_type 2
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value