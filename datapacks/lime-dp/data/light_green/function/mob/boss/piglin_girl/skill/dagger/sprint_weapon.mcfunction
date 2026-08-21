execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_sprint/play
execute as @e[tag=aj.piglin_girl_head.root,limit=1,distance=..30] run function animated_java:piglin_girl_head/animations/dagger_sprint/play
playsound minecraft:event.mob_effect.bad_omen hostile @a ~ ~ ~ 3 2
scoreboard players set @s light_green.boss.animation 11
scoreboard players set @s light_green.boss.attack_type 26
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value