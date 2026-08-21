execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_jump/play
scoreboard players set @s light_green.boss.animation 6
scoreboard players set @s light_green.boss.attack_type 36
scoreboard players set $piglin_girl_dagger_jump light_green.main.math 1