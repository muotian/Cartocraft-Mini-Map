execute if score @s light_green.boss.animation matches 45 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 4 1.25
execute if score @s light_green.boss.animation matches 40 run playsound minecraft:block.trial_spawner.detect_player hostile @a ~ ~ ~ 5 0.75
execute if score @s light_green.boss.animation matches 15 run playsound minecraft:block.trial_spawner.step hostile @a ~ ~ ~ 5 0.2
execute if score @s light_green.boss.animation matches 10 run playsound minecraft:block.trial_spawner.step hostile @a ~ ~ ~ 5 0.2
execute if score @s light_green.boss.animation matches 5 run playsound minecraft:block.trial_spawner.step hostile @a ~ ~ ~ 5 0.2
execute if score @s light_green.boss.animation matches 5 if score $leg light_green.main.math matches 1 run function light_green:mob/boss/graud_golem/pillar/clear/1
execute if score @s light_green.boss.animation matches 5 if score $leg light_green.main.math matches 2 run function light_green:mob/boss/graud_golem/pillar/clear/2
execute if score @s light_green.boss.animation matches 5 if score $leg light_green.main.math matches 3 run function light_green:mob/boss/graud_golem/pillar/clear/3
execute if score @s light_green.boss.animation matches 5 if score $leg light_green.main.math matches 4 run function light_green:mob/boss/graud_golem/pillar/clear/4

execute if score @s light_green.boss.animation matches 20 run kill @e[tag=light_green.stone_stick,limit=4,type=husk]

execute if score @s light_green.boss.animation matches 17 positioned ~-9 ~ ~4 run particle dust_pillar{block_state:{Name:blackstone}} ~ ~ ~ 0.5 0.5 0.5 0 500
execute if score @s light_green.boss.animation matches 15 positioned ~-9 ~ ~4 run function light_green:mob/boss/graud_golem/stone_stick/summon {number:1}

execute if score @s light_green.boss.animation matches 12 positioned ~9 ~ ~-4 run particle dust_pillar{block_state:{Name:blackstone}} ~ ~ ~ 0.5 0.5 0.5 0 500
execute if score @s light_green.boss.animation matches 10 positioned ~9 ~ ~-4 run function light_green:mob/boss/graud_golem/stone_stick/summon {number:3}

execute if score @s light_green.boss.animation matches 7 positioned ~4 ~ ~9 run particle dust_pillar{block_state:{Name:blackstone}} ~ ~ ~ 0.5 0.5 0.5 0 500
execute if score @s light_green.boss.animation matches 5 positioned ~4 ~ ~9 run function light_green:mob/boss/graud_golem/stone_stick/summon {number:2}

execute if score @s light_green.boss.animation matches 2 positioned ~-4 ~ ~-9 run particle dust_pillar{block_state:{Name:blackstone}} ~ ~ ~ 0.5 0.5 0.5 0 500
execute if score @s light_green.boss.animation matches 0 positioned ~-4 ~ ~-9 run function light_green:mob/boss/graud_golem/stone_stick/summon {number:4}


execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/graud_golem/stone_stick/math
execute if score @s light_green.boss.animation matches 0 run playsound minecraft:block.trial_spawner.step hostile @a ~ ~ ~ 5 0.2
execute if score @s light_green.boss.animation matches 0 run data modify entity @s Invulnerable set value true
execute if score @s light_green.boss.animation matches 0 run scoreboard players set @s light_green.mob.ai 2
execute if score @s light_green.boss.animation matches 0 as @n[tag=aj.graud_golem.root,type=item_display] run function animated_java:graud_golem/animations/nothing/play