execute if entity @s[tag=light_green.target_sprint_ready_dagger] run return run function light_green:mob/boss/piglin_girl/skill/dagger/sprint_damage
function light_green:random {math1:1,math2:10}
execute if score $piglin_girl_level light_green.main.math matches 1 if score $piglin_girl_skill2 light_green.main.math matches 1 if score $random light_green.main.math matches 1..3 run return run function light_green:mob/boss/piglin_girl/skill/dagger/throw_start1
execute if score $piglin_girl_level light_green.main.math matches 2 if score $piglin_girl_skill2 light_green.main.math matches 1 if score $random light_green.main.math matches 1..5 run return run function light_green:mob/boss/piglin_girl/skill/dagger/throw_start1
execute as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/dagger_sprint/play
execute as @e[tag=aj.piglin_girl_head.root,limit=1,distance=..30] run function animated_java:piglin_girl_head/animations/dagger_sprint/play
playsound minecraft:event.mob_effect.bad_omen hostile @a ~ ~ ~ 3 2
scoreboard players set @s light_green.boss.animation 11
scoreboard players set @s light_green.boss.attack_type 25
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value