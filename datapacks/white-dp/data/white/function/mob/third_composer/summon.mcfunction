
summon wither_skeleton ~ ~ ~ {Tags:[white.mob.third_composer,summon],CustomName:{translate:"entity.white.third_composer",color:"#ecbaed",bold:true},PersistenceRequired:1b,\
    equipment:{\
    head:{id:"player_head",components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTUwNjcxOGQzZDQ2NjU4ZTJlMTcyNzJlNWI2YjJjOTIyYjQzNjVmNTBlMGIwOGMxZGU1YzU4N2Q1ZTRlOTJkYSJ9fX0="}]}}},\
    mainhand:{id:"writable_book"},\
    chest:{id:"leather_chestplate",components:{dyed_color:9230068,trim:{material:"diamond",pattern:"flow"}}},\
    legs:{id:"leather_leggings",components:{dyed_color:4568720}},\
    feet:{id:"leather_boots",components:{dyed_color:4748440,trim:{material:"gold",pattern:"raiser"}}},\
    },\
    attributes:[{id:"movement_speed",base:0.21},{id:"scale",base:0.8},{id:"attack_damage",base:2}]}

execute if data entity @s data.white{mob:{is_move:false}} run attribute @e[tag=summon,type=wither_skeleton,limit=1] movement_speed base set 0

data modify storage white:mob summon set value {id:third_composer,cd:"40..80",hpmax:24}
execute as @e[tag=summon,limit=1] at @s run function white:sys/mob/init