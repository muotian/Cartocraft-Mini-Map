execute if score @s light_green.boss.animation matches 2 run playsound minecraft:block.trial_spawner.step hostile @a ~ ~ ~ 5 0.2
execute if score @s light_green.boss.animation matches 2 run playsound entity.ravager.step hostile @a ~ ~ ~ 5 0.5
execute if score @s light_green.boss.animation matches 4 positioned ~4 ~ ~9 run particle dust_pillar{block_state:{Name:blackstone}} ~ ~ ~ 0.5 0.5 0.5 0 500
execute if score @s light_green.boss.animation matches 2 positioned ~4 ~ ~9 run function light_green:mob/boss/graud_golem/stone_stick/summon {number:2}