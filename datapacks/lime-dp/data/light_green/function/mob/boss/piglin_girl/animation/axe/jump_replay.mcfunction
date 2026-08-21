execute facing entity @n[tag=light_green.boss.piglin_girl.sprint_target] feet run rotate @s ~ 0
execute if score @s light_green.boss.animation matches 20 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.5
execute if score @s light_green.boss.animation matches 17 run function light_green:mob/boss/piglin_girl/animation/axe/earth_quack/0 with storage light_green:smoke
execute if score @s light_green.boss.animation matches 17 run playsound minecraft:entity.ender_dragon.flap hostile @a ~ ~ ~ 3 1
execute if score @s light_green.boss.animation matches 17 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 1
execute if score @s light_green.boss.animation matches 10 as @e[tag=aj.piglin_girl_head.root,limit=1,distance=..30] run function animated_java:piglin_girl_head/animations/axe_jump/play
execute if score @s light_green.boss.animation matches 5 as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] run function animated_java:piglin_girl/animations/axe_jump/play
#execute if score @s light_green.boss.animation matches 10 run playsound minecraft:block.trial_spawner.ominous_activate hostile @a ~ ~ ~ 3 2
execute if score @s light_green.boss.animation matches 3 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:entity.camel_husk.dash hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 2 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.5
execute if score @s light_green.boss.animation matches ..3 unless entity @n[tag=light_green.boss.piglin_girl.sprint_target,distance=..4] run function light_green:mob/boss/piglin_girl/skill/axe/sprint_motion
execute if score @s light_green.boss.animation matches ..1 if entity @n[tag=light_green.boss.piglin_girl.sprint_target,distance=..4] run return run function light_green:mob/boss/piglin_girl/animation/axe/jump_detect
execute if entity @s[tag=light_green.boss.piglin_girl.axe.jump.replay_ready] run return fail
execute if score @s light_green.boss.animation matches ..1 unless entity @n[tag=light_green.boss.piglin_girl.sprint_target] run function light_green:mob/boss/piglin_girl/skill/axe/jump_end