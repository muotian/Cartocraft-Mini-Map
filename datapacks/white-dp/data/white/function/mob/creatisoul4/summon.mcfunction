
summon spider ~ ~ ~ {Tags:[summon],CustomName:{translate:"entity.white.creatisoul4"},\
    attributes:[{id:"movement_speed",base:0.2}]}

data modify storage white:mob summon set value {id:creatisoul4,hpmax:18}
execute as @e[tag=summon,limit=1] at @s run function white:sys/mob/init