
## detect
execute store result score #range white.main run attribute @s minecraft:block_interaction_range get 10
scoreboard players add #range white.main 10
execute anchored eyes positioned ^ ^ ^ run function white:sys/player/mined_spawner/ray

## skills
execute if items entity @s weapon.mainhand *[custom_data~{white:{item:amigatito}}] run function white:move/amigatito/use

## reset
tag @e[tag=white.spawner_center,type=experience_orb,limit=1] remove white.spawner_center
scoreboard players reset @s white.mined_spawner