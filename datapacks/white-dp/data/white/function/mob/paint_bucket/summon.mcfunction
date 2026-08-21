
summon bee ~ ~ ~ {Tags:[summon],CustomName:{translate:"entity.white.paint_bucket"},\
    Anger:1145141919,HasNectar:true,CannotEnterHiveTicks:1145141919,\
    attributes:[{id:"scale",base:1.5}]}

data modify entity @e[tag=summon,type=bee,limit=1] angry_at set from entity @p[predicate=white:player] UUID

data modify storage white:mob summon set value {id:paint_bucket,hpmax:10}
execute as @e[tag=summon,limit=1] at @s run function white:sys/mob/init