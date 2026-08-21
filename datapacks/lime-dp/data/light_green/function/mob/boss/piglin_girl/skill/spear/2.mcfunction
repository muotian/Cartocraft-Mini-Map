execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/spear_attack2_test/play
scoreboard players set @s light_green.boss.animation 9
scoreboard players set @s light_green.boss.attack_type 18
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value