
summon vindicator ~ ~ ~ {Tags:[white.mob.beard_mage,summon],CustomName:{translate:"entity.white.beard_mage",color:"#ecbaed",bold:true},PersistenceRequired:1b,\
    equipment:{\
    head:{id:"player_head",components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2E0MzQwYjYxZjM3MTA2OTY3MjFiYWFmMzNkZmE4MjgzZmE5ODY4Mjk3MGRmNDZjNjMzODMwNjYyNWE1NDdiZCJ9fX0="}]}}},\
    mainhand:{id:"paper",components:{item_model:"white:mage_scepter",enchantments:{knockback:2}}}},\
    attributes:[{id:"armor",base:4},{id:"knockback_resistance",base:0.6},{id:"movement_speed",base:0.2},{id:"attack_damage",base:4}]}

data modify storage white:mob summon set value {id:beard_mage,cd:"40..80",hpmax:26}
execute as @e[tag=summon,limit=1] at @s run function white:sys/mob/init