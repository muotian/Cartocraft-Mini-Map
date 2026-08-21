
summon husk ~ ~ ~ {Tags:[summon],CustomName:{translate:"entity.white.zote_kid"},IsBaby:true,\
    equipment:{\
        head:{id:"player_head",components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzIyNDEzNjU5MTk5M2FiMDI2NTllYjY1OTliZmIwZGRhNTM3MGEzNjcxZjU5ZDg2ZTgyYjQ1MmU5NGIzNzdhZSJ9fX0="}]}}},\
        chest:{id:"leather_chestplate",components:{dyed_color:4013373}},\
        legs:{id:"leather_leggings",components:{dyed_color:7303023}},\
        feet:{id:"leather_boots",components:{dyed_color:10921638}},\
    },\
    attributes:[{id:"movement_speed",base:0.2},{id:"scale",base:1.25},{id:"attack_damage",base:0.0001}]}

data modify storage white:mob summon set value {id:zote_kid,hpmax:20}
execute as @e[tag=summon,limit=1] at @s run function white:sys/mob/init