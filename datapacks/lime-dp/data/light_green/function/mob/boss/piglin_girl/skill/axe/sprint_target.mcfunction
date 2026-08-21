execute if entity @s[tag=light_green.boss.piglin_girl.axe.jump_ready] run return run function light_green:mob/boss/piglin_girl/skill/axe/jump
execute if entity @s[tag=light_green.boss.piglin_girl.axe.jump.replay_ready] run return run function light_green:mob/boss/piglin_girl/skill/axe/jump_replay
execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/axe_sprint/play
scoreboard players set @s light_green.boss.animation 16
scoreboard players set @s light_green.boss.attack_type 23
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value