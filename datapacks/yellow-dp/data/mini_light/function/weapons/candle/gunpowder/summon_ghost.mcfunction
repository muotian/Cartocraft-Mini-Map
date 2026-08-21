# 執行者、執行位置是玩家

execute at @e[tag=attacked,tag=!mini_light.gunpowder_ghost] run summon creeper ~ ~ ~ {Tags:["mini_light.gunpowder_ghost","new"],powered:1b,NoAI:1b,active_effects:[{id:"invisibility",duration:-1,show_particles:0b}],Passengers:[{id:"area_effect_cloud",Duration:9999999,Tags:["mini_light.decoration"], custom_particle:{type:"block",block_state:"air"}, Radius:0.0f}],DeathLootTable:"",equipment:{feet:{id:"iron_boots",count:1,components:{enchantments:{"mini_light:weapons/ghost":1}}}},drop_chances:{feet:0.0f}}
scoreboard players set @e[tag=mini_light.gunpowder_ghost,tag=new] mini_light.duration 200
execute as @e[tag=mini_light.gunpowder_ghost,tag=new] on passengers run data modify entity @s Owner set from entity @n[tag=attacked] UUID

scoreboard players set $damage mini_light.damage 0
scoreboard players operation @e[tag=mini_light.gunpowder_ghost,tag=new] mini_light.ghost_damage = $damage mini_light.damage

tag @e[tag=new] remove new