particle minecraft:firefly ~ ~ ~ 1 1 1 2 5

team join orange_wind_charge_drowned @s

scoreboard players add @s orange_timer 1

execute if score @s orange_timer matches 30 run effect give @s minecraft:glowing 3 1 true

execute if score @s orange_timer matches 60..61 at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# ======================================================

# execute if score @s orange_timer matches 49 at @s run data modify entity @s {Motion:[0.0,0.0,0.8]} set from entity @p Pos

# ======================================================

execute if score @s orange_timer matches 46 at @s run playsound minecraft:entity.iron_golem.hurt ambient @a ~ ~ ~ 1 1.5

execute if score @s orange_timer matches 46 run function thecookieorange:mob/zombie_elite/calculate_motion_jump

execute if score @s orange_timer matches 60 run function thecookieorange:mob/zombie_elite/calculate_motion

# ======================================================

# execute if score @s orange_timer matches 40..45 at @s run tp @s ^0.2 ^ ^0.5

# execute if score @s orange_timer matches 46..50 at @s run tp @s ^ ^ ^0.5

# execute if score @s orange_timer matches 51 run function thecookieorange:mob/zombie/calculate_motion

# ======================================================

execute if score @s orange_timer matches 200.. run scoreboard players set @s orange_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:2,MaxNearbyEntities:4,RequiredPlayerRange:14,Delay:1,MinSpawnDelay:3000,MaxSpawnDelay:5000,SpawnData:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:zombie",DeathLootTable:"thecookieorange:mobs/elite_zombie",PersistenceRequired:1b,Health:26f,Tags:["orange.wind.charge.elite.zombie"],CustomName:{"bold":true,"color":"dark_purple","italic":false,"shadow_color":-1762026680,"translate":"entity.cookieorange_res.orange_wind_charge_elite_zombie","underlined":true},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":10225672}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:dyed_color":8862238,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:wild"}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:trim":{material:"minecraft:resin",pattern:"minecraft:ward"}}},head:{id:"minecraft:orange_banner",count:1},mainhand:{id:"minecraft:stone_spear",count:1},offhand:{id:"minecraft:totem_of_undying",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},active_effects:[{id:"minecraft:hero_of_the_village",amplifier:0,duration:60000,show_particles:1b}],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:max_health",base:32},{id:"minecraft:movement_speed",base:0.25}]}}}] 1