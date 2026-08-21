execute if score @s light_green.boss.attack_type matches 9 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_attack1_end/play
execute if score @s light_green.boss.attack_type matches 7 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_attack2_end/play
execute if score @s light_green.boss.attack_type matches 8 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_attack3_end/play
scoreboard players set @s light_green.boss.animation 6
scoreboard players set @s light_green.boss.attack_type 10
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value