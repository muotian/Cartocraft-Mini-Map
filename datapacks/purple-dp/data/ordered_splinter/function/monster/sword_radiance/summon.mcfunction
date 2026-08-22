playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 2 2
playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 2 1.2
playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 2 0.7
playsound minecraft:block.vault.open_shutter hostile @a ~ ~ ~ 2 0.1
playsound minecraft:item.spear.lunge_3 hostile @a ~ ~ ~ 2 0.5
playsound minecraft:entity.breeze.idle_ground hostile @a ~ ~ ~ 2 2
rotate @s facing entity @n[tag=wool_purple.target]
summon marker ~ ~ ~ {Tags:["wool_purple.sword_radiance_front","summon_1"]}
data modify entity @e[tag=summon_1,limit=1,sort=nearest] Rotation set from entity @s Rotation
execute as @e[tag=summon_1,limit=1] at @s positioned ^ ^ ^-0.5 run summon marker ~ ~ ~ {Tags:["wool_purple.sword_radiance_behind","summon_2"]}
data modify entity @e[tag=summon_2,limit=1,sort=nearest] Rotation set from entity @e[tag=summon_1,limit=1] Rotation
tag @e[tag=summon_1,limit=1] remove summon_1
tag @e[tag=summon_2,limit=1] remove summon_2