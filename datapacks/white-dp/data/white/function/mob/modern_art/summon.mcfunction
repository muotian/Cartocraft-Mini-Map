
summon creeper ~ ~ ~ {Tags:[summon],CustomName:{translate:"entity.white.modern_art"},\
    Passengers:[{id:marker,Tags:[white.mob.modern_art.cat]}]}

data modify storage white:mob summon set value {id:creatisoul4,hpmax:18}
execute as @e[tag=summon,limit=1] at @s run function white:sys/mob/init