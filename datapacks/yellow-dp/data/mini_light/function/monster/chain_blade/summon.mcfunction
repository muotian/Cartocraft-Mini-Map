summon zombie ~ ~ ~ {CustomName:[{"translate":"entity.mini_light.chain_blade","color":"gray"}],Health:30,Tags:["mini_light.chain_blade","new"],drop_chances:{head:0.0f, chest:0.0f, legs:0.0f, feet:0.0f, mainhand:0.0f},attributes:[{id:"max_health",base:30f}],DeathLootTable:"mini_light:monster_castle"}
scoreboard players set @e[tag=mini_light.chain_blade, tag=new] mini_light.monster_cooldown 20
execute as @e[tag=mini_light.chain_blade, tag=new] at @s run function mini_light:monster/chain_blade/armor_on
tag @e[tag=new] remove new