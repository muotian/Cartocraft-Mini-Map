#boss
execute at @n[tag=black.boss1_center] run summon zombie ~ ~ ~ {CustomNameVisible:0b,DeathLootTable:"none",Health:1024f,Tags:["icebird.boss1"],CustomName:{"color":"dark_blue","text":"ewe"},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":11731199,"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:flow"}}},legs:{id:"minecraft:golden_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:silence"}}},chest:{id:"minecraft:golden_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:flow"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2Y2OWVmODM2MWEwYjM5M2ZhODM4MWNlNzljOWNmYzgwYWRjZjI1YmE4Nzc4NWNkMTRlOGIyNmZlM2I3In19fQ=="}]}}},mainhand:{id:"minecraft:golden_sword",count:1,components:{"minecraft:item_model":"black:bosssword"}}},drop_chances:{chest:0.000,head:0.000,mainhand:0.000},attributes:[{id:"minecraft:armor",base:8},{id:"minecraft:armor_toughness",base:4},{id:"minecraft:attack_damage",base:10},{id:"minecraft:max_absorption",base:1024},{id:"minecraft:max_health",base:1024},{id:"minecraft:scale",base:1.1},{id:"minecraft:knockback_resistance",base:1024},]}
function black:bossfight/boss1/health/setup
#skills
function black:bossfight/boss1/skill1/end
function black:bossfight/boss1/skill2/end
function black:bossfight/boss1/skill3/end
function black:bossfight/boss1/skill4/end
function black:bossfight/boss1/skill5/end
scoreboard players set $berserk.tick icebird.boss1 0
scoreboard players set $boss1.skill1 icebird.boss1 260
scoreboard players set $boss1.skill1_hard icebird.boss1 0
scoreboard players set $boss1.skill2 icebird.boss1 220
scoreboard players set $boss1.skill3 icebird.boss1 220
scoreboard players set $boss1.skill4 icebird.boss1 0
scoreboard players set $boss1.skill5 icebird.boss1 0
scoreboard players set $phase icebird.boss1 1
scoreboard players set $b1s2.time icebird.boss1 0
scoreboard players set $boss1.stop icebird.boss1 0
scoreboard players reset @a icebird.DeathInBoss
tag @a add icebird.bossfight_1
execute if score $difficulty icebird.core matches 1..2 run function black:bossfight/boss1/countdown
execute if score $difficulty icebird.core matches 3 run function black:bossfight/boss1/countdown_hard
function black:bossfight/boss1/tick
scoreboard players set $boss1.ready icebird.boss1 0
schedule clear black:bossfight/boss1/ready
#bossbar
function black:bossfight/boss1/bossbar
function black:bossfight/boss1/music
#dia
tellraw @a {translate:"black.boss1.start"}
# black.boss1.start =
execute at @a run playsound minecraft:entity.ender_dragon.growl block @a ~ ~ ~ 1 1.1 1

#background
function black:bossfight/boss1/music
function black:bossfight/boss1/death
function black:bossfight/boss1/rulechange
