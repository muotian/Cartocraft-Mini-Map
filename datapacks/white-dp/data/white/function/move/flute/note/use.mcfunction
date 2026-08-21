
summon marker ~ ~ ~ {Tags:[white.move.flute.note,"summon"]}

rotate @e[tag=summon,type=marker,limit=1] ~ ~

function white:sys/bullet/init

# fx
playsound minecraft:entity.puffer_fish.blow_out master @a ~ ~ ~ 1 2