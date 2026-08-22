kill @s
kill @n[tag=pink.monster.b,type=marker]

#
execute if entity @n[tag=pink.glass] run return fail

summon skeleton ~ ~8 ~ {Health:100,Glowing:1b,Tags:["pink_mobs","pink.glass"],equipment:{head:{id:player_head,components:{"minecraft:custom_name":{text:"Chaos Terror Helmet (snowflake)",color:gold,underlined:true,bold:true,italic:false},"minecraft:lore":[{text:"Custom Head ID: 126925",color:gray,italic:false},{text:"www.minecraft-heads.com",color:blue,italic:false}],profile:{properties:[{name:textures,value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTQ4ZGE3NTBmOTdhNGM5MGMxZWFlMzFkMDNhMzQyMjQ4NGE2MGE4NTM2YzEwMmVjOWUyM2U0NmMyZjJlYThhZSJ9fX0="}]}}},chest:{id:leather_chestplate,components:{trim:{pattern:dune,material:iron},dyed_color:15789822,enchantments:{thorns:3}}}},drop_chances:{head:0f,chest:0f},attributes:[{id:max_health,base:85f}],CustomName:[{"translate":"monster.pink.glass.name",color:"dark_purple"}],Team:pink.monster2,CustomNameVisible:true,PersistenceRequired:1b,DeathLootTable:"pink:item_d/white3"}
summon phantom ~ ~8 ~ {Invulnerable:1b,Silent:1b,Tags:["pink_mobs.glass_vex"],attributes:[{id:attack_damage,base:-100f},{id:scale,base:0.1f}],DeathLootTable:"",anchor_pos:[I;-51,38,-14],PersistenceRequired:1b}

ride @n[tag=pink.glass] mount @n[tag=pink_mobs.glass_vex]

#
scoreboard players set $cd1 pink.monster.glass.skill 10
scoreboard players set $cd2 pink.monster.glass.skill 10
