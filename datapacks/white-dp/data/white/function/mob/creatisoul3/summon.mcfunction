
summon stray ~ ~ ~ {Tags:[summon],CustomName:{translate:"entity.white.creatisoul3"},\
    equipment:{head:{id:"player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWNiNzAxOWM1MGJiNWVmNWI4MzQzYTc4ODFmZGVhODZlNGE2NTQ5NTk5YzZhYTI0NTgzNDI3NWZmYWFkMzExNSJ9fX0="}]}}},mainhand:{id:"wooden_axe",components:{"!attribute_modifiers":{},enchantments:{knockback:3}}}},\
    attributes:[{id:"movement_speed",base:0.18},{id:"attack_damage",base:6}]}

data modify storage white:mob summon set value {id:creatisoul3,hpmax:20}
execute as @e[tag=summon,limit=1] at @s run function white:sys/mob/init